// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, no_logic_in_create_state

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home_view.dart';
import 'package:mvp_all/pages/login_view.dart';
import 'package:mvp_all/pages/password_view.dart';
import 'package:mvp_all/pages/register_view.dart';
import 'package:mvp_all/painters/progress_painter.dart';

class ProgressView extends StatefulWidget {
  const ProgressView(this.name);
  final name;

  @override
  State<ProgressView> createState() => _ProgressViewState(name);
}

class _ProgressViewState extends State<ProgressView> {
  _ProgressViewState(this.name);
  final name;

  int porcent = 0;
  Timer timer;

  @override
  void initState() {
    loandingTime();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: ProgressPaint(porcent)),
        ),
      ),
    );
  }

  void loandingTime() {
    timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setState(() {
        if (porcent < 100) {
          porcent += 2;
        } else {
          timer.cancel();
          Navigator.pop(context);
          if (name == "Register" || name == "IniciarSesion") {
            Route route =
                MaterialPageRoute(builder: ((context) => const RegisterView()));
            Navigator.push(context, route);
          }

          if (name == 'OnBoarding') {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const IniciarSesion()));
          }

          if (name == 'Iniciar' || name == 'RegistroInicio') {
            Route route =
                MaterialPageRoute(builder: ((context) => const LoginView()));
            Navigator.push(context, route);
          }

          if (name == 'contrasena') {
            Route route = MaterialPageRoute(builder: ((context) => const PasswordView()));
            Navigator.push(context, route);
          }
        }
      });
    });
  }
}
