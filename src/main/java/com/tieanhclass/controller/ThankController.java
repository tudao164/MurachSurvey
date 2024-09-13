package com.tieanhclass.controller;

import com.tieanhclass.model.UserModel;
import com.tieanhclass.utils.FormUtils;
import com.tieanhclass.utils.HttpUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.Arrays;

@WebServlet(urlPatterns = {"/Thank"})
public class ThankController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/thank.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        super.doPost(request, response);

        // Lấy dữ liệu từ form
//        String email = request.getParameter("email");
//        String firstName = request.getParameter("firstName");
//        String lastName = request.getParameter("lastName");

//       FormUtils.toModel(UserModel.class,request) ;

        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String dobString = request.getParameter("dob");

        // Chuyển đổi ngày sinh từ chuỗi thành LocalDate
        DateTimeFormatter formatter =  DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate dob = null;
        if (dobString != "") {
            dob = LocalDate.parse(dobString, formatter);
        }

        String referral = request.getParameter("referral");
        String[] receiveOffers = request.getParameterValues("email-announcements") ;
        String contactMethod = request.getParameter("contact-method");



        UserModel userModel = new UserModel();
        userModel.setFirstName(firstName);
        userModel.setLastName(lastName);
        userModel.setEmail(email);
        userModel.setDob(dob);
        userModel.setReferral(referral);

        if (receiveOffers != null) {
            userModel.setReceiveOffers(Arrays.asList(receiveOffers));
        }


        userModel.setContactMethod(contactMethod);

        request.setAttribute("userModel", userModel);

        RequestDispatcher rd = request.getRequestDispatcher("/views/thank.jsp");
        rd.forward(request, response);
    }
}
