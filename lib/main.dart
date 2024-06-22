import 'package:flutter/material.dart';
import 'package:pr_4_departure/screens/controller/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProviderParsing(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: Provider.of<ProviderParsing>(context).objectList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(Provider.of<ProviderParsing>(context)
                .objectList[index]
                .hindi
                .toString()),
          ),
        ),
      ),
    );
  }
}
