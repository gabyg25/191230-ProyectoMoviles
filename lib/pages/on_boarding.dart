import 'package:flutter/material.dart';
import 'package:mvp_all/styles/style.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": 'assets/image/B1.png',
    },
    {
      "text": "ADOPCIÓN",
      "text1": "agregar texto para la parte de adopcion",
      "image": 'assets/image/B2.png',
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "agregar texto para la parte de hospitalidad",
      "image": 'assets/image/B3.png',
    },
    {
      "text": "VETERINARIA",
      "text1": "agregar texto para la parte de veterinaria",
      "image": 'assets/image/B4.png',
    },
    {
      "text": "TIENDA",
      "text1": "Compra todas las necesidades de tu mascota sin salir de casa",
      "image": 'assets/image/B5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: PageView.builder(
                    onPageChanged: (value) {setState(() {pages = value;});},
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) => ContentBoarding(
                      text: onBoardingDatas[index]["text"],
                      text1: onBoardingDatas[index]["text1"],
                      image: onBoardingDatas[index]["image"],
                    ))),
                Expanded(
                  flex: 2,
                  child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(onBoardingDatas.length,
                            (index) => newMethod(index: index)),
                      )],
                  )),
                _buttonBoarding(index: pages),
              ],
            ))),
      ));
  }

  AnimatedContainer newMethod({int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: pages == index ? 20 : 20,
      decoration: BoxDecoration(
        color: pages == index
            ? ColorsSelect.paginatorNext
            : ColorsSelect.paginator,
        borderRadius: BorderRadius.circular(3),
      ));
  }

  _buttonBoarding({int index}) {
    if (index != 4) {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 50, width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          shape: BoxShape.rectangle,
          border: Border.all(color: ColorsSelect.btnTextBo1, width: 3)),
        alignment: Alignment.center,
        child: const Text('Siguiente', style: TextStyle(fontSize: 17, color: Colors.black)),
      );

    } else {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 50, width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorsSelect.btnBackgroundBo2),
        alignment: Alignment.center,
        child: const Text('Continuar', style: TextStyle(fontSize: 17, color: Colors.white)),
      );
    }
  }
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key key,
    this.text,
    this.text1,
    this.image,
  }) : super(key: key);

  final String text, text1, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset(image, width: 290, height: 290),
            Text(text, style: const TextStyle(color: ColorsSelect.txtBoHe,fontSize: 21)),
            Padding(padding: const EdgeInsets.all(5),
              child: Text(text1, textAlign: TextAlign.center,
                style: const TextStyle(color: ColorsSelect.txtBoSubHe,fontSize: 15))),
          ])],
    );
  }
}
