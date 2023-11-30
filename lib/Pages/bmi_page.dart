import 'package:bmi/Provider/change_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  @override
  Widget build(BuildContext context) {
    Object? initialHeightValue = 'cm';
    List heightItem = ['cm', 'ft'];
    Object? initialWeightValue = 'kg';
    List weightItem = ['kg', 'lbs'];

    var _cmHeight = TextEditingController();
    var _ftHeight = TextEditingController();
    var _inchHeight = TextEditingController();
    var _weight = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'), actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                },
                icon: const Icon(Icons.info_outline)))
      ]),
      body: Column(children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 180, 20),
            child: TextField(
              controller: _cmHeight,
              autofocus: true,
              decoration: const InputDecoration(
                  labelText: 'Height', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          Positioned(
            bottom: 25,
            right: 50,
            child: Consumer(
              builder: (context, value, child) {
                return DropdownButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    value: initialHeightValue,
                    onChanged: (newValue) {
                      
                    },
                    items: heightItem.map((valueItem1) {
                      return DropdownMenuItem(
                          value: valueItem1, child: Text(valueItem1));
                    }).toList());
              },
            ),
          ),
        ]),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 180, 20),
            child: TextField(
              controller: _weight,
              decoration: const InputDecoration(
                  labelText: 'Weight', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          Positioned(
              bottom: 25,
              right: 50,
              child: DropdownButton(
                  value: initialWeightValue,
                  onChanged: (value) {
                    setState(() {
                      initialWeightValue = value;
                    });
                  },
                  items: weightItem.map((valueItem2) {
                    return DropdownMenuItem(
                        value: valueItem2, child: Text(valueItem2));
                  }).toList()))
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {
              if (_cmHeight.text.isNotEmpty && _weight.text.isNotEmpty) {
                var cm = double.parse(_cmHeight.text.toString()) / 100;
                var wt = double.parse(_weight.text.toString());
                var bmi = wt / (cm * cm);

                setState(() {
                  Center(
                    child: Text(
                      'BMI = $bmi',
                      style: const TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                  );
                });
              } else {
                var msg = const SnackBar(content: Text('Fill all required fields !'));
                ScaffoldMessenger.of(context).showSnackBar(msg);
              }
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            child: const Text(
              'Calculate',
              textScaleFactor: 1.1,
            ),
          ),
        )
      ]),
    );
  }
}
