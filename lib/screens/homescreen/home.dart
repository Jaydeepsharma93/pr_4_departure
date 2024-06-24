import 'package:flutter/material.dart';

import '../dohascreen/dohascreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DohaScreen(),
                ));
              },
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/download.jpg'),
                        fit: BoxFit.fill)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
