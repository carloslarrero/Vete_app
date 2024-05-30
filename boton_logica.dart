import 'package:flutter/material.dart';
import 'package:flutter_vete/pages/equinos.dart';
// ignore: unused_import
import 'package:flutter_vete/pages/principal.dart';
//import 'package:flutter_vete/pages/principal.dart';

//Logica botones del drawer

class BotonesLogic {
  static void goToHomePage(BuildContext context) {
    // Obtener la ruta actual
    String? currentRoute = ModalRoute.of(context)?.settings.name;
    // Verificar si la ruta actual es la página principal ('/')
    if (currentRoute == '/') {
      // Ignorar la navegación si ya estamos en la página principal
      return;
    }
    // Navegar a la página principal solo si no estamos en ella
    Navigator.pushReplacementNamed(context, '/');
  }

  static void goToSettingsPage(BuildContext context) {
    //logica para ir a la página de configuración
    //Navigator.pop(context); //cierra el Drawer
  }
}

class BotonesAnimales{
  static void horse(BuildContext context){
    Future.delayed(const Duration(milliseconds: 400), () {
    Navigator.push(context,MaterialPageRoute(
      builder: (context) =>  MyHorse()),
      );
    });
  }
}