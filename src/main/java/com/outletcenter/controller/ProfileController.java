package com.outletcenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileController {

    @GetMapping("/profile")
    public String profilePage() {
        return "profile/profile"; // Esto hace referencia a "login.html" dentro de la carpeta "login"
    }
}
