import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/styles/style.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  
  PageController pageController = PageController();

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
          child: Container(
            color: Colors.white,
            child: SizedBox(width: double.infinity,
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 4,
                      child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              pages = value;
                            });
                          },
                          controller: pageController,
                          itemCount: onBoardingDatas.length,
                          itemBuilder: (context, index) => ContendorBoarding(
                                text: onBoardingDatas[index]["text"],
                                text1: onBoardingDatas[index]["text1"],
                                image: onBoardingDatas[index]["image"],
                              ))),
                  Expanded(
                      flex: 2,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(onBoardingDatas.length,
                              (index) => newMethod(index: index)))
                      ])),
                  _buttonBoarding(pages, (onBoardingDatas.length - 1)),
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

  _buttonBoarding(int index, int size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          color: ColorsSelect.btnBackgroundBo1,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: index == size
                  ? ColorsSelect.btnBackgroundBo2
                  : ColorsSelect.btnTextBo1)),
      child: ElevatedButton(
        onPressed: () {
          if (index == size) {
            showCupertinoModalPopup(
                context: context,
                builder: (context) => const ProgressView("OnBoarding"));
          } else {
            if (index < size && index >= 0) {
              pages++;
              setState(() {
                pageController.jumpToPage(pages);
              });
            }
          }
        },
        child: Text(index == size ? 'Continuar' : 'Siguiente',
            style: TextStyle(
                color: index == size
                    ? ColorsSelect.btnTextBo2
                    : ColorsSelect.btnTextBo1,
                fontSize: 17)),
        style: ElevatedButton.styleFrom(
          primary: index == size
              ? ColorsSelect.btnBackgroundBo2
              : ColorsSelect.btnBackgroundBo1,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}

class ContendorBoarding extends StatelessWidget {
  const ContendorBoarding({
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
        Column(children: <Widget>[
          Image.asset(image, width: 290, height: 290),
          Text(text,style:const TextStyle(color: ColorsSelect.txtBoHe, fontSize: 21)),
          Padding(
              padding: const EdgeInsets.all(5),
              child: Text(text1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: ColorsSelect.txtBoSubHe, fontSize: 15))),
        ])
      ],
    );
  }
}
