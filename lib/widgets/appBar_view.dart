// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mvp_all/styles/style.dart';

AppBar appBarView(String title, context) {
  return AppBar(
      title: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(children: [
          Row(children: [Container(
            width: 170,
            margin: const EdgeInsets.only(left: 5.0),
            child: Text(title),
            )],
          ),
          Row(children: [Container(
            width: 30,
            margin: const EdgeInsets.only(left: 60.0),
            child: Image.asset('assets/image/splash.png',color: Colors.white),
            )],
          )],
        )),
      elevation: 0,
      backgroundColor: ColorsSelect.txtBoHe,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext)),
      titleTextStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white));
}
