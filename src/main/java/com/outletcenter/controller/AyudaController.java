/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.outletcenter.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AyudaController {
    @GetMapping("/ayuda")
    public String ayudaPage() {
        return "ayuda/ayuda"; // Esto hace referencia a "login.html" dentro de la carpeta "ayuda"
    }
}
