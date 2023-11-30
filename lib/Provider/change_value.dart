import 'package:flutter/material.dart';

class ChangeValue extends ChangeNotifier {
  var initialHeightValue;
  List heightItem = ['cm', 'ft'];

  var initialWeightValue;
  List weightItem = ['kg', 'lbs'];


  changeHeight(changeValue) {
    initialHeightValue = changeValue;
    notifyListeners();
  }

  changeWeight(){
    DropdownButton(icon: const Icon(Icons.arrow_drop_down),
    value:initialWeightValue ,items: weightItem.map((weightValue){
      return DropdownMenuItem(value: weightValue,child: Text(weightValue));
    }).toList(), onChanged: (valueItem2){
      
    });
  }
}
