class AppUrls {
  static const String baseURL = "https://ecsdevapi.nextline.mx/vdev/tasks-challenge";

  /* 
  ------------------------------
  Getters URL
  ------------------------------
  */

  String get getTasks => '$baseURL/tasks';

}

// Globalizamos los Endpoints de la API, en caso de tener mas incluirlos aqui. 