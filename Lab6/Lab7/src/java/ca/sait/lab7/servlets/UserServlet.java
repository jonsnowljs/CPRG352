package ca.sait.lab7.servlets;

import ca.sait.lab7.modules.Role;
import ca.sait.lab7.modules.User;
import ca.sait.lab7.services.RoleService;
import ca.sait.lab7.services.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jason
 */
public class UserServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserService userService = new UserService();
        try {
            String selectedEmail = request.getParameter("selectedEmail");
            String action = request.getParameter("action");

            switch (action) {
                case "delete":
                    userService.delete(selectedEmail);
                    break;

                case "edit":
                    User user = userService.get(selectedEmail);
                    request.setAttribute("selectedUser", user);
                    break;

            }
        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            List<User> users = userService.getAll();
            request.setAttribute("users", users);

        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RoleService roleService = new RoleService();
        UserService userService = new UserService();

        String selectedEmail = request.getParameter("selectedEmail");
        String action = request.getParameter("postAction");
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        int roleId = Integer.parseInt(request.getParameter("role"));
        Role role = null;

        try {
            List<User> users = userService.getAll();
            List<Role> roles = roleService.getAll();
            for (Role rol : roles) {
                if (roleId == rol.getId()) {
                    role = new Role(roleId, rol.getName());
                }
            }

            switch (action) {
                case "add":
                    userService.insert(email, true, firstName, lastName, password, role);

                case "update":
                    userService.update(selectedEmail, userService.get(email).isActive(), firstName, lastName, userService.get(email).getPassword(), role);
                    break;
                case "cancel":
                    User user = new User();
                    request.setAttribute("selectedUser", user);
                    break;

            }
        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);

        }

        // update the users variable so jsp file can read it.
        try {
            List<User> users = userService.getAll();
            request.setAttribute("users", users);
        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);

    }

}
