package com.smartsearch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by intel on 5/19/17.
 */

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/admin")
    public String admin(){return "admin";}
}
