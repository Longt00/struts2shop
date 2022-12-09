package action;

import Dao.TeacherDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class LookEmployeeAction extends ActionSupport{
    private HttpServletRequest request;
    private String message="input";
    public String execute() throws Exception{
        request=ServletActionContext.getRequest();
        TeacherDao dao=new TeacherDao();
        List list=dao.findAllInfo();
        request.getSession().setAttribute("count", list.size());
        request.getSession().setAttribute("allInfo", list);
        message="success";
        return message;
    }
}
