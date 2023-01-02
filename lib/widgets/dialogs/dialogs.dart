import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogs {
  static final Dialogs _singleton = Dialogs._internal();

  factory Dialogs() {
    return _singleton;
  }

  Dialogs._internal();

  static Widget quizStartDialog({required VoidCallback onTap}) {
    return AlertDialog(
      // title: const Text("Hi.."),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Holaaaa..",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text("Por favor, inicia sesión antes de iniciar el Quiz"),
        ],
      ),
      actions: <Widget>[TextButton(onPressed: onTap, child: const Text('Ok'))],
    );
  }

  static Future<bool> quizEndDialog() async {
    return (await showDialog(
          context: Get.overlayContext!,
          builder: (context) => AlertDialog(
            title: const Text('Espera espera...'),
            content: const Text(
                'Estas seguro de que quieres salir del cuestionario sin completarlo?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Get.back(result: false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Get.back(result: true),
                child: const Text('Si'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
