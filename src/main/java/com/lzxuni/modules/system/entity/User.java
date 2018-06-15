package com.lzxuni.modules.system.entity;


import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.lzxuni.common.validator.group.AddGroup;
import com.lzxuni.common.validator.group.UpdateGroup;
import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 功能描述: <br>
 * @Author:孙志强
 * @date: 2018/3/15 10:56
*/
@TableName("sys_user")
public class User implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 7632952419415232387L;
	@TableId
	private String userId ;
	private String companyId ;
	@NotBlank(message="用户名不能为空", groups = {AddGroup.class, UpdateGroup.class})
	private String username ;
	private String realname ;
	private Integer state ;
	private String salt ;
	private String password ;

	private String sex ;
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date registerTime ;
	private String registerIp ;
	private Date lastLoginTime ;
	private String lastLoginIp ;
	private Integer loginCount ;
	private Date errorTime ;
	private Integer errorCount ;
	private String errorIp ;
	private String isAdmin;

	/* 哈联通扩展字段 */
	private String encode ;
	private String mobile ;
	private String qq ;
	private String wechat ;


	//公司
	@TableField(exist=false)
	private Company company;

	private String deptId;
	//部门集合暂时没用，本系统用户只对应一个部门
	@TableField(exist=false)
	private List<Dept> deptList;
	//角色集合
	@TableField(exist=false)
	private List<Role> roleList ;
	//岗位集合
	@TableField(exist=false)
	private List<Post> postList ;

	//部门名称
    @TableField(exist=false)
    private String deptName;
    //公司名称
    @TableField(exist=false)
    private String companyName;

	/*构造方法*/
	public User(){}
	public User(User user){}
	/* set,get方法区 */

	@Override
	public String toString() {
		final StringBuffer sb = new StringBuffer("User{");
		sb.append("userId='").append(userId).append('\'');
		sb.append(", companyId='").append(companyId).append('\'');
		sb.append(", username='").append(username).append('\'');
		sb.append(", realname='").append(realname).append('\'');
		sb.append(", state=").append(state);
		sb.append(", salt='").append(salt).append('\'');
		sb.append(", password='").append(password).append('\'');
		sb.append(", sex='").append(sex).append('\'');
		sb.append(", registerTime=").append(registerTime);
		sb.append(", registerIp='").append(registerIp).append('\'');
		sb.append(", lastLoginTime=").append(lastLoginTime);
		sb.append(", lastLoginIp='").append(lastLoginIp).append('\'');
		sb.append(", loginCount=").append(loginCount);
		sb.append(", errorTime=").append(errorTime);
		sb.append(", errorCount=").append(errorCount);
		sb.append(", errorIp='").append(errorIp).append('\'');
		sb.append(", isAdmin='").append(isAdmin).append('\'');
		sb.append(", encode='").append(encode).append('\'');
		sb.append(", mobile='").append(mobile).append('\'');
		sb.append(", qq='").append(qq).append('\'');
		sb.append(", wechat='").append(wechat).append('\'');
		sb.append(", company=").append(company);
		sb.append(", deptId='").append(deptId).append('\'');
		sb.append(", deptList=").append(deptList);
		sb.append(", roleList=").append(roleList);
		sb.append(", postList=").append(postList);
		sb.append(", deptName='").append(deptName).append('\'');
		sb.append(", companyName='").append(companyName).append('\'');
		sb.append('}');
		return sb.toString();
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public List<Dept> getDeptList() {
		return deptList;
	}

	public void setDeptList(List<Dept> deptList) {
		this.deptList = deptList;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public String getRegisterIp() {
		return registerIp;
	}

	public void setRegisterIp(String registerIp) {
		this.registerIp = registerIp;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Integer getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}

	public Date getErrorTime() {
		return errorTime;
	}

	public void setErrorTime(Date errorTime) {
		this.errorTime = errorTime;
	}

	public Integer getErrorCount() {
		return errorCount;
	}

	public void setErrorCount(Integer errorCount) {
		this.errorCount = errorCount;
	}

	public String getErrorIp() {
		return errorIp;
	}

	public void setErrorIp(String errorIp) {
		this.errorIp = errorIp;
	}

	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getEncode() {
		return encode;
	}

	public void setEncode(String encode) {
		this.encode = encode;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
