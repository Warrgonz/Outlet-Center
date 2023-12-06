
package com.outletcenter.service;

import java.io.IOException;
import java.util.Map;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;


public interface ReporteService {
    
    //Se define la forma del metodo que genera los reportes, con los siguienets parametros
    //1.reporte es el nombre del archivo de reporte .jasper
    //2. parametro un map que contiene los parametros del reporte 
    //3. tipo el tipo de reporte : vPdf, Pdf, Xls, Csv
    public ResponseEntity<Resource> generaReporte(
            String reporte,
            Map<String, Object> parametros,
            String tipo) throws IOException;

    
}
