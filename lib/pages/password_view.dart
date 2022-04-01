import 'package:flutter/material.dart';
import 'package:mvp_all/styles/style.dart';
import 'package:mvp_all/widgets/appBar_view.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarView('Recuperar Contraseña', context),
        body: const RecoveryPassword());
  }
}

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({Key key}) : super(key: key);

  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  bool visibilidad = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
              child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.only(top: 43, left: 20, bottom: 10),
            
            child: const Text('Ingresa tu email para establecer tu contraseña',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16,
                    color: ColorsSelect.btnTextBo1,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 29, bottom: 5.0),
            alignment: Alignment.topLeft,
            child: const Text(
              'Correo Eléctronico',
              style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold, 
                color: Colors.black),
            ),
          ),
          Container(
            width: 335,
            height: 70,
            margin: const EdgeInsets.only(bottom: 10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Dirección de Correo',
                labelStyle: const TextStyle(color: ColorsSelect.btnTextBo1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: ColorsSelect.btnTextBo1, width: 1.5))
              ),
              style: const TextStyle(fontSize: 15, color: ColorsSelect.btnTextBo1),),
          ),
          Container(
            width: 335,
            height: 100,
            margin: const EdgeInsets.only(left: 45, right: 30, bottom: 50),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 1.5),
                  child: const Text(
                    'Ingrese su correo electrónico registrado y le',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: ColorsSelect.btnTextBo1),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 1.5),
                  child: const Text(
                    'enviaremos un correo que contiene un',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: ColorsSelect.btnTextBo1),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 1.5),
                  child: const Text(
                    'enlace para reestablecer su contraseña',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: ColorsSelect.btnTextBo1),
                  ),
                )
              ]),
          ),
          Container(
            width: 335,
            height: 50,
            margin: const EdgeInsets.only(top: 160.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: ColorsSelect.btnBackgroundBo2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              child: const Text(
                'Enviar Solicitud',
                style: TextStyle(fontSize: 17, color: ColorsSelect.btnTextBo2)),
            ),
          )
        ],
      ))),
    );
  }
}
