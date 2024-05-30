
import 'package:flutter/material.dart';
import 'package:flutter_vete/button_logic/boton_logica.dart';
//import 'package:flutter_vete/button_logic/boton_logica.dart';


class MyHorse extends StatelessWidget{
  const MyHorse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vete Hannah',
          style: TextStyle(
            color: Colors.white
          ),),
          centerTitle: true,
          leading:IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Implementa aquí la lógica para activar el campo de búsqueda
              },
            ),
          backgroundColor: const Color.fromRGBO(5, 86, 38, 1),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        endDrawer: Drawer(
          // Cuerpo del cajón de navegación
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(5, 86, 38, 1),

                ),
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                iconColor: const Color.fromRGBO(5, 86, 38, 1),
                title: const Text('Inicio', style: TextStyle(color: Color.fromRGBO(5, 86, 38, 1))),
                onTap: () {
                  BotonesLogic.goToHomePage(context); //lógica para ir a la página de inicio
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                iconColor: const Color.fromRGBO(5, 86, 38, 1),
                title: const Text('Configuración', style: TextStyle(color: Color.fromRGBO(5, 86, 38, 1))),
                onTap: () {
                  BotonesLogic.goToSettingsPage(context); //lógica para ir a la página de configuración
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
  }
}