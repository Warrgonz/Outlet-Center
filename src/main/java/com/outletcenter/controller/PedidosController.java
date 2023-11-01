package com.outletcenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PedidosController {

    @GetMapping("/pedidos")
    public String pedidosPage() {
        return "pedidos/pedidos";
    }
}
