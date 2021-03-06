package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteCustomer extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        LogicFacade.removeCustomer(request.getParameter("remove"));
        HttpSession session = request.getSession();
        session.getAttribute("email");
        new CustomerList().execute(request,response);
        return "oversigt";
    }
}
