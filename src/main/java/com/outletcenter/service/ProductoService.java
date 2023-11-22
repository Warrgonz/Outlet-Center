package com.outletcenter.service;

import com.outletcenter.domain.Producto;
import java.util.List;

public interface ProductoService {
    
    // Se obtiene un listado de productos en un List
    public List<Producto> getProductos(boolean activo);
    
    // Se obtiene un Producto, a partir del id de un producto
    public Producto getProducto(Producto producto);
    
    // Se inserta un nuevo producto si el id del producto esta vacío
    // Se actualiza un producto si el id del producto NO esta vacío
    public void save(Producto producto);
    
    // Se elimina el producto que tiene el id pasado por parámetro
    public void delete(Producto producto);
    
    //Ejemplo de consulta Query
    public List<Producto> consultaQuery(double precioInf, double precioSup);
    
    public List<Producto> consultaJPQL(double precioInf, double precioSup);
}
