import 'package:bmi/Pages/bmi_page.dart';
import 'package:bmi/Pages/bmr_pages.dart';
import 'package:bmi/Pages/dropdown.dart';
import 'package:bmi/Pages/info_page.dart';
import 'package:bmi/Provider/change_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ChangeValue(),
        child: MaterialApp(
          title: 'BMI Calculator',
          // initialRoute: '/bmi',
          home: const Drop(),
          routes: {
            '/bmi': (context) => const BmiPage(),
            '/bmr': (context) => const BmrPage(),
            '/info': (context) => const InfoPage()
          },
        ),
      )
    ]);
  }
}
