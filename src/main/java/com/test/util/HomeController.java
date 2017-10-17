package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView getRegistration() {
        return new ModelAndView("Registration");
    }

    @RequestMapping(value = "/addMember")

    public ModelAndView getConfirmation(
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("addressone") String addressone,
            @RequestParam("addresstwo") String addresstwo,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("city") String city,
            @RequestParam("state") String state,
            @RequestParam("zipcode") String zipcode,
            @RequestParam("country") String country
    ) {

        boolean result = DAO.addMember(firstname, lastname, addressone, addresstwo, email, phone, city, state, zipcode, country);

        if(result == false) {
            return new ModelAndView("Error");
        }
        else {

            ModelAndView mv = new ModelAndView("Confirmation");
            mv.addObject("firstname", firstname);
            mv.addObject("lastname", lastname);

            return mv;
        }

    }

    @RequestMapping("/Admin")

    public ModelAndView viewAdmin() {

        ArrayList<addMember> memberList = DAO.getMembers();

        return new ModelAndView("Admin", "mdata", memberList);
    }

}
