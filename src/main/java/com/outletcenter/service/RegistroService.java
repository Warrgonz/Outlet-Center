package com.outletcenter.service;

import com.outletcenter.domain.Usuario;
import jakarta.mail.MessagingException;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

public interface RegistroService { // Crear usuario

    public Model activar(Model model, String usuario, String clave);

    public Model crearUsuario(Model model, Usuario usuario) throws MessagingException;
                                                        //OJO
    public void activar(Usuario usuario, MultipartFile imagenFile);

    public Model recordarUsuario(Model model, Usuario usuario) throws MessagingException;
}
