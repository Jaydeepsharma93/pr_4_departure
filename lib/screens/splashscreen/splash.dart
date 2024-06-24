import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../homescreen/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/img/images.jpg'),fit: BoxFit.fill
        )
    ),
      ),
    );
  }
}

