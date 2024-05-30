// ignore: avoid_web_libraries_in_flutter
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

Widget buildAnimatedButton({
  required BuildContext context, // Añade BuildContext como parámetro
  required String text,
  required Function onPressed,
  Color backgroundColor = const Color.fromRGBO(84,57,31,1),
  Color borderColor = Colors.white,
}) {
  return Positioned(
    top: 30, //que tanto para arriba va
    left: 20, // que tanto a la izquierda va
    child: AnimatedButton(
      height: 70,
      width: 200,
      text: text,
      isReverse: true,
      selectedTextColor: Colors.black,
      transitionType: TransitionType.LEFT_TO_RIGHT,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderRadius: 0,
      borderWidth: 2,
      // contenido del botón, por ejemplo un icono
       onPress: () {
        onPressed(context); // pasa el contexto a la función onPressed
      },
    ),
  );
}
