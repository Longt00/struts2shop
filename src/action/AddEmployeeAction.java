package action;

import Dao.EmployeeDao;
import PO.Employeeinfo;
import com.opensymphony.xwork2.ActionSupport;

import javax.swing.*;
import java.util.List;

public class AddEmployeeAction extends ActionSupport {
    private String id;
    private String name;
    private String sex;
    private int age;
    private String department;

    private int salary;
    private String message = "input";

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void validate() {
        if (this.getId() == null || this.getId().length() == 0) {
            addFieldError("id", "编号不允许为空!");
        } else {
            EmployeeDao dao = new EmployeeDao();
            List list = dao.findInfo("id", this.getId());
            if (!list.isEmpty()) {
                addFieldError("id", "编号已存在!");
            }
        }
        if (this.getName() == null || this.getName().length() == 0) {
            addFieldError("name", "姓名不允许为空!");
        }
        if (this.getAge() > 130) {
            addFieldError("age", "请认真核实年龄！");
        }

    }

    public String execute() throws Exception {
        EmployeeDao dao = new EmployeeDao();
        boolean save = dao.saveInfo(info());
        if (save) {
            message = "success";
        }
        return message;
    }

    public Employeeinfo info() {
        Employeeinfo info = new Employeeinfo();
        info.setId(this.getId());
        info.setName(this.getName());
        info.setSex(this.getSex());
        info.setAge(this.getAge());
        info.setDepartment(this.getDepartment());
        info.setSalary(this.getSalary());
        return info;
    }

    public void message(String mess) {
        int type = JOptionPane.YES_NO_OPTION;
        String title = "提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
