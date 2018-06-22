package com.lzxuni.modules.system.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.lzxuni.common.exception.LzxException;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.web.RequestUtils;
import com.lzxuni.modules.system.entity.Menu;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.service.SysCaptchaService;
import com.lzxuni.modules.system.service.UserService;
import com.lzxuni.modules.system.shiro.ShiroUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

@RestController
public class LoginController {
	private static final Logger log    = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private SysCaptchaService sysCaptchaService;
	@Autowired
	private Producer producer;
	@Autowired
	private UserService userService;
	// 后台主页
	@RequestMapping("/admin/index.html")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/Home/index");
		Cookie[] cookies = request.getCookies();
		String theme = "";
		for (Cookie cookie : cookies) {
			switch(cookie.getName()){
				case "Learn_ADMS_V6.1_UItheme":
					theme = cookie.getValue();
					break;
				default:
					break;
			}
		}

		switch(theme){
			case "1":
				mv.setViewName("/admin/Home/index");
				break;
			case "2":
				mv.setViewName("/admin/Home/index_2");
				break;
			case "3":
				mv.setViewName("/admin/Home/index_3");
				break;
			case "4":
				mv.setViewName("/admin/Home/index_4");
				break;
			default:
				mv.setViewName("/admin/Home/index");
				break;
		}
		return mv;
	}
	// 主页包含内容页
	@RequestMapping("/admin/AdminDesktopTemp.html")
	public ModelAndView adminDesktopTemp(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/Home/AdminDesktopTemp");
		return mv;
	}
	// 用户session页面
	@RequestMapping("/admin/Login/GetUserInfo.html")
	public Object getUserInfo() {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        return R.ok(user);
//        ModelAndView mv = new ModelAndView("/admin/Login/GetUserInfo");
	}
	// 菜单页面
	@RequestMapping("/LR_SystemModule/Module/GetModuleList.html")
	public Object getModuleList() {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        List<Menu> menuList = userService.queryAllMenu(user.getUserId());
        //循环整个菜单集合，并给菜单集合需要的属性赋值
        for(int i=0; i<menuList.size(); i++){
            menuList.get(i).setF_EnabledMark(1);
            menuList.get(i).setF_IsMenu(1);
            if("Y".equals( menuList.get(i).getIsLeaf())){
                menuList.get(i).setF_Target("expand");
            }else{
                menuList.get(i).setF_Target("iframe");
            }
        }
        return R.ok(menuList);
//		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Module/GetModuleList");
//        return mv;
	}


	/**
	 * 验证码
	 */
	@GetMapping("captcha.jpg")
	public void captcha(HttpServletResponse response, String uuid)throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-store, no-cache");
		response.setContentType("image/jpeg");

		//生成文字验证码
		String text = producer.createText();
		//生成图片验证码
		BufferedImage image = producer.createImage(text);
		//保存到shiro session
		ShiroUtils.setSessionAttribute(Constants.KAPTCHA_SESSION_KEY, text);

		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(image, "jpg", out);
	}
    /**
     * 登录
     */

    @RequestMapping("/login_o")
    public R login(String username, String password,Boolean rememberMe, String verifyCode,HttpServletRequest request) {

		User user = userService.queryByUserName(username);
    	//1 构造token
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		Integer errorRemaining = userService.errorRemaining(username);
		if(rememberMe==null){
			token.setRememberMe(true);
		}else{
			token.setRememberMe(rememberMe);
		}

		String info = "";
		// 2如果输入了验证码，那么必须验证；如果没有输入验证码，则根据当前用户判断是否需要验证码。
		try {
			String sessionVerifyCode = ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
			if (isCaptchaRequired(verifyCode,errorRemaining)) {
				if(StringUtils.isEmpty(verifyCode)){
					info = "验证码为空";
				}else if (sessionVerifyCode != null && !sessionVerifyCode.equalsIgnoreCase(verifyCode)) {
					info = "验证码不正确";
				}
			}
            Subject subject = ShiroUtils.getSubject();
            subject.login(token);
        }catch (UnknownAccountException e) {
			info = e.getMessage();
        }catch (IncorrectCredentialsException e) {
			info = "账号或密码不正确";
        }catch (LockedAccountException e) {
			info = "账号已被锁定,请联系管理员";
        }catch (AuthenticationException e) {
			info = "账户验证失败";
        }catch ( LzxException e) {
			info = e.getMsg();
		}

        if(StringUtils.isNotEmpty(info)){
			updateLoginMessage(user, "templates/error",request);
			if(errorRemaining!=null && errorRemaining<=1){
				return R.error(400, info);
			}else{
				return R.error(info);
			}
		}
		updateLoginMessage(user,"success",request);
		return R.ok();

    }
	@RequestMapping("/admin/Home/VisitModule")
	public ModelAndView getMap(){
		ModelAndView mv = new ModelAndView("/admin/Home/VisitModule");
		return mv;
	}

	private boolean isCaptchaRequired(String verifyCode,Integer errorRemaining) {
		log.info("判断需不需要输入验证码=============================="+verifyCode+"============"+errorRemaining);
		// 如果输入了验证码，那么必须验证；如果没有输入验证码，则根据当前用户判断是否需要验证码。
		if (StringUtils.isNotEmpty(verifyCode)|| (errorRemaining != null && errorRemaining <= 1)) {
			log.info("需要输入验证码==============================");
			return true;
		}
		log.info("不需要输入验证码==============================");
		return false;
	}

	/**
	 * 登录失败
	 */
	private void updateLoginMessage(User user,String type,HttpServletRequest request) {
		String ip = RequestUtils.getIpAddr(request);
		if(user!=null){
			if(type.equals("success")){
				userService.updateSuccess(ip, user);
			}else{
				userService.updateError(ip, user);
			}
		}
	}
}
