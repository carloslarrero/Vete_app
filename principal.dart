import 'package:flutter/material.dart';
import 'package:flutter_vete/button_logic/boton_animales.dart';
import 'package:flutter_vete/button_logic/boton_logica.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Corrección aquí

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola Mundo',
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Vete Hannah',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              leading: IconButton(
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
                    title: const Text('Inicio',
                        style: TextStyle(color: Color.fromRGBO(5, 86, 38, 1))),
                    onTap: () {
                      BotonesLogic.goToHomePage(
                          context); //lógica para ir a la página de inicio
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    iconColor: const Color.fromRGBO(5, 86, 38, 1),
                    title: const Text('Configuración',
                        style: TextStyle(color: Color.fromRGBO(5, 86, 38, 1))),
                    onTap: () {
                      BotonesLogic.goToSettingsPage(
                          context); //lógica para ir a la página de configuración
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            backgroundColor: const Color.fromRGBO(255, 240, 201, 1),
            body: Stack(
              children: [
                Positioned(
                  top: 50, //que tanto para arriba va
                  left: 20, // que tanto a la izquierda va
                  child: buildAnimatedButton(
                    context: context,
                    text: 'SUBMIT',
                    onPressed: () {
                        // Navegar a la otra página aquí
                        BotonesAnimales.horse(context);
                    }, 
                  ),
                ),
                Positioned(
                  top: 200, // nueva posición superior para el segundo botón
                  left: 20, // nueva posición izquierda para el segundo botón
                  child: buildAnimatedButton(
                    context: context,
                    text: 'OTRO TEXTO',
                    onPressed: () {
                      // Lógica para otro botón
                    },
                    //backgroundColor: Colors.green, // Cambia el color de fondo para este botón
                    //borderColor: Colors.yellow,  // Cambia el color del borde para este botón
                  ),
                ),
              ],
            )));
  }
}
