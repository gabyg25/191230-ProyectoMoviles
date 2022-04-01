import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/styles/style.dart';
import 'package:mvp_all/widgets/appBar_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarView('Iniciar Sesión', context),
      body: const Formulario(),
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({Key key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool visibilidad = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          child: Column(children: [
        Container(
          width: double.infinity,
          height: 50.0,
          margin: const EdgeInsets.only(top: 43.0, left: 20.0, bottom: 10.0),
          child: const Text(
            'Iniciar Sesión con tu cuenta para continuar',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, bottom: 5.0),
          alignment: Alignment.topLeft,
          child: const Text('Correo Eléctronico',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        Container(
          width: 335,
          height: 70,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email Address',
              labelStyle: const TextStyle(color: ColorsSelect.btnTextBo1),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                      color: ColorsSelect.btnTextBo1, width: 1.5)),
            ),
            style:
                const TextStyle(fontSize: 15, color: ColorsSelect.btnTextBo1),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 20.0, bottom: 5.0),
          child: const Text(
            'Contraseña',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          width: 335,
          height: 70,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: TextFormField(
            obscureText: visibilidad,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: ColorsSelect.btnTextBo1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                        color: ColorsSelect.btnTextBo1, width: 1.5)),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visibilidad = !visibilidad;
                      });
                    },
                    icon: Icon(visibilidad
                        ? Icons.visibility_off
                        : Icons.visibility))),
            style:
                const TextStyle(fontSize: 16, color: ColorsSelect.btnTextBo1),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 30.0, bottom: 50),
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) => const ProgressView('contrasena'));
              },
              child: const Text(
                '¿Has olvidado la contraseña?',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: ColorsSelect.paginatorNext),
              )),
        ),
        Container(
          width: 335,
          height: 50,
          margin: const EdgeInsets.only(top: 120.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: ColorsSelect.btnBackgroundBo2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
            child: const Text(
              'Ingresar',
              style: TextStyle(fontSize: 17, color: ColorsSelect.btnTextBo2)),
          ),
        ),
        Container(
          width: 335,
          margin: const EdgeInsets.only(bottom: 20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              '¿Todavia no tienes una cuenta?',
              style: TextStyle(fontSize: 15.0)),
            TextButton(
              onPressed: () {
                showCupertinoModalPopup(context: context, builder: (context) => const ProgressView('Register'));
              },
              child: const Text(
                'Registrate',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: ColorsSelect.paginatorNext)))
          ]),
        )
      ])),
    );
  }
}
