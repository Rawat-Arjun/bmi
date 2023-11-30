import 'package:flutter/material.dart';

class BmrPage extends StatefulWidget {
  const BmrPage({super.key});

  @override
  State<BmrPage> createState() => _BmrPageState();
}

class _BmrPageState extends State<BmrPage> {
  @override
  Widget build(BuildContext context) {
    String? initialHeightValue;
    List heightItem = ['cm', 'ft'];
    String? initialWeightValue;
    List weightItem = ['kg', 'lbs'];

    TextEditingController _height = TextEditingController();
    TextEditingController _weight = TextEditingController();
    TextEditingController _age = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 200, 20),
            child: TextField(
              controller: _height,
              autofocus: true,
              decoration: const InputDecoration(
                  labelText: 'Height', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          const Positioned(
              right: 130,
              bottom: 40,
              child: Text(
                'cm',
                textScaleFactor: 1.1,
              )),
          Positioned(
              bottom: 25,
              right: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              )),
        ]),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 200, 20),
            child: TextField(
              controller: _weight,
              decoration: const InputDecoration(
                  labelText: 'Weight', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 130,
            child: Text(
              'Kg',
              textScaleFactor: 1.1,
            ),
          ),
          Positioned(
              bottom: 25,
              right: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ))
        ]),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 200, 20),
            child: TextField(
              controller: _age,
              decoration: const InputDecoration(
                  labelText: 'Age', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 120,
            child: Text(
              'Years',
              textScaleFactor: 1.1,
            ),
          ),
        ]),
        Stack(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 270, 20),
            child: Text(
              'Male',
              textScaleFactor: 1.1,
            ),
          ),
          Positioned(
              bottom: 2,
              right: 20,
              child: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ))
        ]),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          child: const Text(
            'Calculate',
            textScaleFactor: 1.1,
          ),
        )
      ]),
    );
  }
}
