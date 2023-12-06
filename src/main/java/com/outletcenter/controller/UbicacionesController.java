
package com.outletcenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UbicacionesController {
    
     @GetMapping("/ubicaciones")
    public String pedidosPage() {
        return "ubicaciones/ubicaciones";
    }
    
}
