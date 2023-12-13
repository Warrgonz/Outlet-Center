package com.outletcenter.controller;


import com.outletcenter.domain.Usuario;
import com.outletcenter.service.RegistroService;
import jakarta.mail.MessagingException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@Slf4j
@RequestMapping("/sesion")
public class RegistroController {

    @Autowired
    private RegistroService sesionService;

    @GetMapping("/nuevo")
    public String nuevo(Model model, Usuario usuario) {
        return "/sesion/nuevo";
    }

    @GetMapping("/recordar")
    public String recordar(Model model, Usuario usuario) {
        return "/sesion/recordar";
    }

    @PostMapping("/crearUsuario")
    public String crearUsuario(Model model, Usuario usuario) 
            throws MessagingException {
        model = sesionService.crearUsuario(model, usuario);
        return "/sesion/salida";
    }

    @GetMapping("/activacion/{usuario}/{id}")
    public String activar(
            Model model, 
            @PathVariable(value = "usuario") String usuario, 
            @PathVariable(value = "id") String id) {
        model = sesionService.activar(model, usuario, id);
        if (model.containsAttribute("usuario")) {
            return "/sesion/activa";
        } else {
            return "/sesion/salida";
        }
    }

    @PostMapping("/activar")
    public String activar(
            Usuario usuario, 
            @RequestParam("imagenFile") MultipartFile imagenFile) {
        sesionService.activar(usuario, imagenFile);
        return "redirect:/";
    }

    @PostMapping("/recordarUsuario")
    public String recordarUsuario(Model model, Usuario usuario) 
            throws MessagingException {
        model = sesionService.recordarUsuario(model, usuario);
        return "/sesion/salida";
    }
}
