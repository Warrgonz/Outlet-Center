package com.outletcenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String loginPage() {
        return "login/login"; // Esto hace referencia a "login.html" dentro de la carpeta "login"
    }
}
