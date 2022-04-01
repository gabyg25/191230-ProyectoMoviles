import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvp_all/pages/progress_view.dart';

class IniciarSesion extends StatelessWidget {
  const IniciarSesion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(children: [
          // Logotipo
          Container(
            height: 150,
            margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 50.0),
            child: Image.asset('assets/image/splash.png'),
          ),
          //Boton Google
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Row(children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  FaIcon(FontAwesomeIcons.google, size: 20.0),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Text('Continuar con Google', style: TextStyle(fontSize: 16.0))
                ]),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    primary: const Color.fromRGBO(49, 105, 245, 1))),
          ),
          // Boton Facebook
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Row(children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  FaIcon(FontAwesomeIcons.facebookSquare, size: 25.0),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Text('Continuar con Facebook',
                      style: TextStyle(fontSize: 16.0))
                ]),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    primary: const Color(0xff324fa5))),
          ),
          // Boton Email
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
                onPressed: () {
                  showCupertinoModalPopup(
                        context: context,
                        builder: (context) => const ProgressView('Register'));
                },
                child: Row(children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Icon(Icons.mail_rounded, color: Color(0xff64686f)),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Text('Continuar con E-mail',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xff64686f)))
                ]),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    side: const BorderSide(
                        color: Color(0xff64686f),
                        width: 3,
                        style: BorderStyle.solid),
                    primary: const Color(0xffffffff))),
          ),
          Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: Column(children: [
                SizedBox(
                  // Boton Invitado
                  width: 300,
                  height: 48,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Entrar Como Invitado',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xfffc1460),
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  width: 300,
                  height: 48,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Entrar Como Vendedor',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color(0xff76a757),
                              fontWeight: FontWeight.bold))),
                )
              ])),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('¿Ya tiene Cuenta?', style: TextStyle(fontSize: 15.0)),
              TextButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => const ProgressView('Iniciar'));
                  },
                  child: const Text('Iniciar Sesion',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460))))
            ]),
          )
        ]),
      ),
    );
  }
}
