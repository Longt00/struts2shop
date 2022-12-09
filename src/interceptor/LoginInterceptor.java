package interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation arg0) throws Exception {
        ActionContext ac = arg0.getInvocationContext();
        // 获取session中的user类，若没有则user==null
        Object user = ac.getSession().get("user");
        if (user != null) {
            return arg0.invoke();
        } else {
            ac.put("msg", "请登录！");
            return Action.INPUT;
        }

    }

}

