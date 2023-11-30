// import 'package:flutter/material.dart';

// class Drop extends StatefulWidget {
//   const Drop({super.key});

//   @override
//   State<Drop> createState() => _DropState();
// }

// class _DropState extends State<Drop> {
//   List items = ['cm', 'ft'];
//   var value;
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('DrropDown'),
//       ),
//       body: Center(
//         child: DropdownButton(
//             icon: const Icon(Icons.arrow_drop_down_sharp),
//             iconSize: 40,
//             value: value,
//             onChanged: (newValue) {
//               setState(() {
//                 value = newValue;
//               });
//               },
//               items: items.map((valueItem) {
//               return DropdownMenuItem(
//                 value: valueItem,
//                 child: Text(valueItem));
//             }).toList(),),
//       ),
//     );
//   }
// }

import 'package:bmi/Provider/change_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drop extends StatelessWidget {
  const Drop({super.key});

  @override
  Widget build(BuildContext context) {
    List items = ['cm', 'ft'];
    var value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider_Drop'),
      ),
      body: Consumer(
        builder: (context, value, child) {
          return Center(
            child: Consumer<ChangeValue>(builder: (context, value, child) =>
                DropdownButton(
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  iconSize: 40,
                  hint: const Text('Select'),
                  value: value,
                  items: items.map((heightValue) {
                    return DropdownMenuItem(
                        value: heightValue, child: Text(heightValue));
                  }).toList(),
                  onChanged: (changeV) {
                    value.changeHeight(changeV);
                    
                  })
            ),
          );
        },
      ),
    );
  }
}
