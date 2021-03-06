package PresentationLayer;

import DBAccess.UserMapper;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class CustomerList extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        ArrayList<User> customerList = UserMapper.getCustomers();
        int antalKunder = customerList.size();

        HttpSession session = request.getSession();
        session.setAttribute("customerlist", customerList);
        session.setAttribute("antalKunder",antalKunder);

        return "oversigt";
    }




}
