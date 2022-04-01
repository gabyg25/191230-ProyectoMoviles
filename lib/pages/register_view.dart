import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home_view.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/styles/style.dart';
import 'package:mvp_all/widgets/appBar_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarView('Regístrate', context),
      body: const FormularioRegistro(),
    );
  }
}

class FormularioRegistro extends StatefulWidget {
  const FormularioRegistro({Key key}) : super(key: key);

  @override
  State<FormularioRegistro> createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  bool visibilidad = true;
  bool values = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
          child: Column(children: [
        Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(top: 43, left: 20, bottom: 10.0),
          child: const Text('Crea una cuenta para empezar a usar la app',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 29, bottom: 5),
          alignment: Alignment.topLeft,
          child: const Text('Nombre',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        Container(
          width: 335,
          height: 70,
          margin: const EdgeInsets.only(bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: 'Nombre',
                labelStyle: const TextStyle(color: ColorsSelect.btnTextBo1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: ColorsSelect.btnTextBo1, width: 1.5))),
            style: const TextStyle(
                fontSize: 15, color: ColorsSelect.btnBackgroundBo1),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 29, bottom: 5),
          alignment: Alignment.topLeft,
          child: const Text('Dirección de Correo',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        Container(
          width: 335,
          height: 70,
          margin: const EdgeInsets.only(bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: 'Dirección de correo',
                labelStyle: const TextStyle(color: ColorsSelect.btnTextBo1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: ColorsSelect.btnTextBo1, width: 1.5))),
            style: const TextStyle(
                fontSize: 15, color: ColorsSelect.btnBackgroundBo1),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 29, bottom: 5),
          alignment: Alignment.topLeft,
          child: const Text('Contraseña',
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
          width: 320,
          height: 50,
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            'La contraseña debe contener caracteres, números y símbolos con un minimo de 6 caracteres',
            style: TextStyle(color: ColorsSelect.btnTextBo1),
          ),
        ),
        Container(
          width: 335,
          height: 50,
          margin: const EdgeInsets.only(left: 20, right: 50),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                      width: 30,
                      height: 50,
                      margin: const EdgeInsets.only(right: 10, bottom: 14),
                      child: Checkbox(
                        value: values,
                        side: const BorderSide(
                            color: ColorsSelect.btnTextBo1, width: 1.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onChanged: (bool newValue) {
                          setState(() {
                            values = newValue;
                          });
                        },
                      ))
                ],
              ),
              Row(children: [
                SizedBox(
                  width: 260,
                  height: 50,
                  child: Row(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'al Registrarme, acepto los',
                              style: TextStyle(
                                  fontSize: 15, color: ColorsSelect.btnTextBo1),
                            ),
                            TextButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) =>
                                          const IniciarSesion());
                                  Navigator.push(context, route);
                                },
                                child: const Text(
                                  'terminos y',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: ColorsSelect.paginatorNext,
                                    fontWeight: FontWeight.bold),
                                )
                            )
                          ],
                        ),
                        Row(children: [
                          TextButton(
                            onPressed: () {
                            }, 
                            child: const Text(
                              'condiciones',
                              style: TextStyle(
                                fontSize: 15, 
                                color: ColorsSelect.paginatorNext,
                                fontWeight: FontWeight.bold),
                            )),
                            TextButton(
                              onPressed: () {}, 
                              child: const Text(
                                'y la',
                                style: TextStyle(fontSize: 15, color: ColorsSelect.btnTextBo1),
                              )),
                            TextButton(
                              onPressed: () {}, 
                              child: const Text(
                                'politica de privacidad',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: ColorsSelect.paginatorNext,
                                  fontWeight: FontWeight.bold),
                              ))
                        ],)
                      ],
                    )
                  ]),
                )
              ])
            ],
          ),
        ),
        Container(
          width: 335,
          height: 50,
          margin: const EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: ColorsSelect.btnBackgroundBo2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            child: const Text(
              'Crear Cuenta',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('¿Ya tiene Cuenta?', style: TextStyle(fontSize: 15.0)),
              TextButton(
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context, builder: (context) => const ProgressView('RegistroInicio'));
                  },
                  child: const Text('Iniciar Sesion',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460))
                  ))
            ])
        ),
      ])),
    ));
  }
}
