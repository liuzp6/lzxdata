package com.lzxuni.modules.system.controller;

import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.ShiroUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	// 后台主页
	@RequestMapping("/admin/index.html")
	public ModelAndView index(HttpServletRequest request) throws Exception {
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
	public ModelAndView getUserInfo(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/Login/GetUserInfo");
		return mv;
	}
	// 菜单页面
	@RequestMapping("/LR_SystemModule/Module/GetModuleList.html")
	public ModelAndView getModuleList(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Module/GetModuleList");
		return mv;
	}
    /**
     * 登录
     */
    @RequestMapping(value = "/sys/login", method = RequestMethod.POST)
    public R login(String username, String password, String captcha) {
//        String kaptcha = ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
//        if(!captcha.equalsIgnoreCase(kaptcha)){
//            return R.error("验证码不正确");
//        }

        try{
            Subject subject = ShiroUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            subject.login(token);
        }catch (UnknownAccountException e) {
            return R.error(e.getMessage());
        }catch (IncorrectCredentialsException e) {
            return R.error("账号或密码不正确");
        }catch (LockedAccountException e) {
            return R.error("账号已被锁定,请联系管理员");
        }catch (AuthenticationException e) {
            return R.error("账户验证失败");
        }

        return R.ok();
    }
    /**
     * 退出
     */
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout() {
        ShiroUtils.logout();
        return "redirect:login.html";
    }

}
