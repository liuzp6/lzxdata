(function (n) {
	"use strict";
	document.onkeydown = function (n) {
		if (n || (n = window.event), (n.keyCode || n.which) == 13) {
			var t = document.getElementById("btnlogin");
			btnlogin.click()
		}
	};
	var t = {
		initialPage : function () {
			var r = n(window).height(),
			u = n(window).width(),
			t = (r - 524) / 2,
			i = (u - 1024) / 2;
			n(".lr-login-top").css("margin-top", t - 56 + "px");
			n(".menu").css("top", t + 50 + "px");
			n(".lr-bg-left").width(i);
			n(".lr-bg-right").width(i)
		},
		dialogAlert : function (n, t) {
			t == -1 && (t = 2);
			top.layer.alert(n, {
				icon : t,
				title : "力软提示"
			})
		},
		formMessage : function (t, i) {
			n(".login_tips").remove();
			n(".login_tips-succeed").remove();
			var r = "login_tips";
			i == 1 && (r = "login_tips-succeed");
			n(".lr-input-form").prepend('<div class="' + r + '"><i class="fa fa-question-circle"><\/i>' + t + "<\/div>")
		},
		formMessageRemove : function () {
			n(".login_tips").remove();
			n(".login_tips-succeed").remove()
		},
		loginForm : {
			init : function () {
				if (top.$.cookie("learun_login_error") != null) {
					switch (top.$.cookie("learun_login_error")) {
					case "Overdue":
						t.formMessage("登录已超时,请重新登录");
						break;
					case "OnLine":
						t.formMessage("您的帐号已在其它地方登录,请重新登录");
						break;
					case "noCache":
						t.formMessage("缓存过期,请重新登录");
						break;
					case "-1":
						t.formMessage("未知错误,请重新登录")
					}
					top.$.cookie("learun_login_error", "", {
						path : "/",
						expires : -1
					})
				}
				top.$.cookie("learn_autologin") == 1 && (n("#autologin").attr("checked", "true"), n("#username").val(top.$.cookie("learn_username")), n("#password").val(top.$.cookie("learn_password")), t.loginForm.checkLogin(1));
				n("#autologin").click(function () {
					n(this).attr("checked") ? (n(this).removeAttr("checked"), top.$.cookie("learn_autologin", "", {
							path : "/",
							expires : -1
						}), top.$.cookie("learn_username", "", {
							path : "/",
							expires : -1
						}), top.$.cookie("learn_password", "", {
							path : "/",
							expires : -1
						})) : (n(this).attr("checked", "true"), top.$.cookie("learn_autologin", 1, {
							path : "/",
							expires : 7
						}))
				});
				var i = top.$.cookie("learn_UItheme");
				i && n("#UItheme").val(i);
				n("#btnlogin").click(function () {
					var i = n("#username"),
					r = n("#password"),
					u = n("#verifycode");
					if (i.val() == "")
						return i.focus(), t.formMessage("请输入账户或手机号或邮箱。"), !1;
					if (r.val() == "")
						return r.focus(), t.formMessage("请输入密码。"), !1;
					if (u.val() == "")
						return u.focus(), t.formMessage("请输入验证码。"), !1;
					t.loginForm.checkLogin(0)
				});
				n("#login_verifycode").click(function () {
					n("#verifycode").val("");
					n("#login_verifycode").attr("src", contentPath + "/Login/VerifyCode?time=" + Math.random())
				});
				n("#a_register").click(function () {
					n("#lr-login-form").hide();
					n("#lr-register-form").show();
					n("#register_verifycode").attr("src", contentPath + "/Login/VerifyCode?time=" + Math.random())
				});
				n("#a_login").click(function () {
					n("#lr-login-form").show();
					n("#lr-register-form").hide();
					n("#login_verifycode").attr("src", contentPath + "/Login/VerifyCode?time=" + Math.random())
				})
			},
			checkLogin : function (i) {
				n("#btnlogin").addClass("active").attr("disabled", "disabled");
				n("#btnlogin").find("span").hide();
				var u = n.trim(n("#username").val()),
				r = n.trim(n("#password").val()),
				f = n.trim(n("#verifycode").val());
				(top.$.cookie("learn_password") == "" || top.$.cookie("learn_password") == null) && (r = n.md5(r));
				n.ajax({
					url : contentPath + "/Login/CheckLogin",
					data : {
						username : n.trim(u),
						password : n.trim(r),
						verifycode : f,
						autologin : i
					},
					type : "post",
					dataType : "json",
					success : function (i) {
						i.type == 1 ? (top.$.cookie("learn_autologin") == 1 && (top.$.cookie("learn_username", n.trim(u), {
									path : "/",
									expires : 7
								}), top.$.cookie("learn_password", n.trim(r), {
									path : "/",
									expires : 7
								})), top.$.cookie("learn_UItheme", n("#UItheme").val(), {
								path : "/",
								expires : 30
							}), window.location.href = contentPath + "/Home/Index") : (i.message.length >= 30 ? t.dialogAlert(i.message, 0) : t.formMessage(i.message), n("#btnlogin").removeClass("active").removeAttr("disabled"), n("#btnlogin").find("span").show(), n("#login_verifycode").trigger("click"))
					}
				})
			}
		},
		registerForm : {
			init : function () {
				n("#txt_register_account").blur(function () {
					function i(n) {
						return /^(\+\d{2,3}\-)?\d{11}$/.test(n) ? !0 : !1
					}
					n(this).val() == "" || i(n(this).val()) ? t.formMessageRemove() : (n(this).focus(), t.formMessage("手机格式不正确,请输入正确格式的手机号码。"))
				});
				n("#txt_register_password").keyup(function () {
					n(".passlevel").find("em").removeClass("bar");
					var t = n(this).val().length;
					t <= 8 ? n(".passlevel").find("em:eq(0)").addClass("bar") : t > 8 && t <= 12 ? (n(".passlevel").find("em:eq(0)").addClass("bar"), n(".passlevel").find("em:eq(1)").addClass("bar")) : t > 12 && n(".passlevel").find("em").addClass("bar")
				});
				n("#btnregister").click(function () {
					var i = n("#txt_register_account"),
					r = n("#txt_register_code"),
					u = n("#txt_register_name"),
					f = n("#txt_register_password"),
					e = n("#txt_register_verifycode");
					if (i.val() == "")
						return i.focus(), t.formMessage("请输入手机号。"), !1;
					if (r.val() == "")
						return r.focus(), t.formMessage("请输入短信验证码。"), !1;
					if (u.val() == "")
						return u.focus(), t.formMessage("请输入姓名。"), !1;
					if (f.val() == "")
						return f.focus(), t.formMessage("请输入密码。"), !1;
					if (e.val() == "")
						return e.focus(), t.formMessage("请输入图片验证码。"), !1;
					n("#btnregister").addClass("active").attr("disabled", "disabled");
					n("#btnregister").find("span").hide();
					n.ajax({
						url : contentPath + "/Login/Register",
						data : {
							mobileCode : i.val(),
							securityCode : r.val(),
							fullName : u.val(),
							password : n.md5(f.val()),
							verifycode : e.val()
						},
						type : "post",
						dataType : "json",
						success : function (i) {
							i.type == 1 ? (alert("注册成功"), window.location.href = contentPath + "/Login/Index") : (t.formMessage(i.message), n("#btnregister").removeClass("active").removeAttr("disabled"), n("#btnregister").find("span").show(), n("#register_verifycode").trigger("click"))
						}
					})
				});
				n("#register_getcode").click(function () {
					var i = n(this);
					i.attr("disabled", "disabled");
					n.ajax({
						url : contentPath + "/Login/GetSecurityCode",
						data : {
							mobileCode : n("#txt_register_account").val()
						},
						type : "get",
						dataType : "json",
						async : !1,
						success : function (r) {
							r.type == 1 ? t.formMessage("已向您的手机" + n("#txt_register_account").val() + "发送了一条验证短信。", 1) : (i.removeAttr("disabled"), alert(r.message))
						}
					})
				})
			}
		}
	};
	n(function () {
		t.initialPage();
		n(window).resize(function (n) {
			window.setTimeout(t.initialPage, 200);
			n.stopPropagation()
		});
		t.loginForm.init();
		t.registerForm.init();
		window.setTimeout(function () {
			n("#ajax-loader").fadeOut()
		}, 100)
	})
})(window.jQuery)
