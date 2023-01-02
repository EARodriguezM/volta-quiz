import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:volta_quiz/controllers/auth_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();
  Rxn<User?> user = Rxn();

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void signIn() {
    Get.find<AuthController>().navigateToLogin();
  }

  void github() {
    _launch('https://github.com/EARodriguezM');
  }

  void linkedin() {
    _launch('https://www.linkedin.com/in/earodriguezmelendez/');
  }

  void email() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'esarodriguezme@gmail.com',
    );
    _launch(emailLaunchUri.toString());
  }

  @override
  void onReady() {
    user.value = Get.find<AuthController>().getUser();
    super.onReady();
  }

  Future<void> _launch(String url) async {
    if (!await launch(
      url,
    )) {
      throw 'No se pedo ir a $url';
    }
  }
}
