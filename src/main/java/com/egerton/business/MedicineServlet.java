package com.egerton.business;

import com.egerton.data.Medicine;
import com.egerton.dataIO.MedicineIO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "MedicineServlet", value = "/medicines")
public class MedicineServlet extends HttpServlet {
    private String medicinesURL = "medicine.jsp";
    private  String addMedicineURL = "add-medicine.jsp";
    private  String medicineFilePath = "WEB-INF/medicine.txt";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String action = request.getParameter("action");

        int id = 0;

        if(request.getParameter("id") != null) {
            id =  Integer.parseInt(request.getParameter("id"));
        }

        String url = null;
        if( action != null){
            switch (action){
                case "edit":
                    //get the medicine with the given id and redirect
                    Medicine medicine = MedicineIO.getMedicine( id, getMedicineFilePath());
                    request.setAttribute("medicine", medicine);
                    url = addMedicineURL;
                    break;
                case "delete":
                    //get the medicine with the given id and redirect
                    Medicine m = MedicineIO.getMedicine( id, getMedicineFilePath());
                    MedicineIO.delete(m, getMedicineFilePath());
                    request.setAttribute("message", "Medicine deleted successfully");
                    request.setAttribute("messageType", "success");
                    url = "/medicines";
                    break;
                default: break;
            }
        } else {

            //get medicine from file
            ArrayList<Medicine> medicines = MedicineIO.getMedicines(getMedicineFilePath());
            if (medicines.size() == 0) {
                request.setAttribute("message", "No Medicine added");
                request.setAttribute("messageType", "success");
                request.setAttribute("medicines", null);
            } else {
                request.setAttribute("medicines", medicines);
            }
            url = medicinesURL;
        }
        //redirect to the medicines page
        if(url.equals("/medicines"))
            redirectToRoute(request, response, url);
        else
            forwardToPage( request, response, url);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get data from request object
        //int id = Integer.parseInt(request.getParameter("id"));
        int id =8;
        String name = request.getParameter("name");
        String genericName = request.getParameter("genericName");
        String storeBox = request.getParameter("storeBox");
        int quantity = Integer.parseInt( request.getParameter("quantity"));
        String category = request.getParameter("category");
        String sideEffects = request.getParameter("sideEffects");
        String expiryDate = request.getParameter("expiryDate");
        //create medicine instance
        Medicine medicine = new Medicine();
        medicine.setId(id);
        medicine.setName(name);
        medicine.setGenericName(genericName);
        medicine.setStoreBox(storeBox);
        medicine.setQuantity(quantity);
        medicine.setCategory(category);
        medicine.setSideEffects(sideEffects);
        medicine.setExpiryDate(expiryDate);
        //insert data to file
        MedicineIO.insert(medicine,getMedicineFilePath() );

        request.setAttribute("message","Medicine added Successfully");
        request.setAttribute("messageType","success");
        //redirect
        forwardToPage( request, response, addMedicineURL);
    }

    private void forwardToPage(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
    private void redirectToRoute(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
        response.sendRedirect( request.getContextPath() + url);
    }
    public String getMedicineFilePath() {
        ServletContext sc = getServletContext();
        String path = sc.getRealPath(medicineFilePath);
        return path;
    }
}
