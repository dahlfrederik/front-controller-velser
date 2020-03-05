package PresentationLayer;

import DBAccess.UserMapper;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class DeleteCustomer extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        LogicFacade.RemoveCustomer(request.getParameter("remove"));
        HttpSession session = request.getSession();
        session.getAttribute("email");
        new CustomerList().execute(request,response);
        return "oversigt";
    }
}
