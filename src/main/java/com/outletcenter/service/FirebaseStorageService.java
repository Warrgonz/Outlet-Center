package com.outletcenter.service;

import org.springframework.web.multipart.MultipartFile;

public interface FirebaseStorageService {

    public String cargaImagen(MultipartFile archivoLocalCliente, String carpeta, Long id);

    //El BuketName es el <id_del_proyecto> + ".appspot.com"
    final String BucketName = "outletcenter-32f52.appspot.com";
  

    //Esta es la ruta básica de este proyecto.
    final String rutaSuperiorStorage = "outletcenter";

    //Ubicación donde se encuentra el archivo de configuración Json
    final String rutaJsonFile = "firebase";

    //El nombre del archivo Json
    final String archivoJsonFile = "outletcenter-32f52-firebase-adminsdk-44v9x-cbe1282a90.json";
   
}
