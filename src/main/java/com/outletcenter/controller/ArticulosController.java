package com.outletcenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArticulosController {

        @GetMapping("/articulos")
    public String articulosPage() {
        return "articulos/articulos"; // Esto hace referencia a "login.html" dentro de la carpeta "login"
    }
}
