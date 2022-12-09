package action;


import Dao.UserDao;
import Dao.UserImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.User;

import java.util.Map;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
    User user = new User();
    UserDao useDao = new UserImpl();

    public String login() {
        ActionContext ac = ActionContext.getContext();
        User us = useDao.login(user);
        String str;
        if (us.getUsername() != null) {
            ac.getSession().put("user", us);
            str = "success";
        } else {
            ActionContext.getContext().put("msg", "用户名或密码错误");
            str = "input";
        }
        System.out.println(str);
        return str;
    }
    //注销用户
    public String clearSession() {
        ActionContext ac = ActionContext.getContext();
        Map<String, Object> session = ac.getSession();
        session.clear();
        return INPUT;
    }
    //从首页跳转到index.jsp，会被拦截器拦截，若session没有user数据则跳转到登录界面
    public String index() {
        return SUCCESS;
    }

    @Override
    public User getModel() {
        return user;
    }
}

