import 'package:flutter/material.dart';

class BoxResizeProvider extends ChangeNotifier {
  Object? initialHeightValue = 'cm';
  List heightItem = ['cm', 'ft'];
  Object? initialWeightValue = 'kg';
  List weightItem = ['kg', 'lbs'];

  var _cmHeight = TextEditingController();
  var _ftHeight = TextEditingController();
  var _inchHeight = TextEditingController();
  var _weight = TextEditingController();

  changeBox() {
    if (initialHeightValue == 'cm') {
      return TextField(
        controller: _cmHeight,
        autofocus: true,
        decoration: const InputDecoration(
            labelText: 'Height', border: OutlineInputBorder()),
        keyboardType: TextInputType.number,
        
      );
      
    } 
    else {
      return Row(
        children: [
          TextField(
            controller: _ftHeight,
            decoration: const InputDecoration(
                labelText: 'ft', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
          ),
          TextField(
            controller: _inchHeight,
            decoration: const InputDecoration(
                labelText: 'inch', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
          ),
        ],
      );
      
    }
    
  }

  notifyListeners(); 
  
}
