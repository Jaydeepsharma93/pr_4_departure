import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'jsonParsing.dart';

class ProviderParsing extends ChangeNotifier {
  List dataList = [];
  List<Doha> objectList = [];

  ProviderParsing() {
    jsonCheka();
  }

  Future<void> jsonCheka() async {
    String json = await rootBundle.loadString('assets/json/doha.json');
    dataList = jsonDecode(json);
    objectList = dataList
        .map(
          (e) => Doha.fromJson(e),
        )
        .toList();
    notifyListeners();
  }
}
