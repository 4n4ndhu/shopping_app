import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopping_app/model/product_screen_model.dart';

class ProductScreenController with ChangeNotifier {
  List<ProductScreenModel>? responsObj;
  bool isLoading = false;

  Future getFetcheddata() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.parse("https://fakestoreapi.com/products");

    try {
      var response = await http.get(url);
      print(response);

      if (response.statusCode == 200) {
        responsObj = productScreenModelFromJson(response.body);
        print(responsObj);
      }
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
