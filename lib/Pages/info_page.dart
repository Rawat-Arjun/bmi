import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Body Mass Index (BMI)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'The Body Mass Index (BMI) estimates the ideal weight for a person based on the height. It is valid for any adult person (aged between 18 and 65 years).',textScaleFactor: 1.1),
            const SizedBox(height: 20),
            Table(
                border: TableBorder.all(),
                columnWidths:const { 0: FractionColumnWidth(0.35),1:FractionColumnWidth(0.65)},
                
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: const [
                  TableRow(children: [
                    Text('0 - 15', textAlign: TextAlign.center),
                    Text('UNDERWEIGHT \n(VERY SEVERELY)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))
                  ]),
                  TableRow(children: [
                    Text('15 - 16', textAlign: TextAlign.center),
                    Text('UNDERWEIGHT\n(SEVERELY)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue))
                  ]),
                  TableRow(children: [
                    Text('16 - 18.5', textAlign: TextAlign.center),
                    Text('UNDERWEIGHT\n',
                    
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.cyan))
                  ]),
                  TableRow(children: [
                    Text('18.5 - 25', textAlign: TextAlign.center),
                    Text('NORMAL\n(HEALTHY WEIGHT)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))
                  ]),
                  TableRow(children: [
                    Text('25 - 30', textAlign: TextAlign.center),
                    Text('OVERWEIGHT\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow))
                  ]),
                  TableRow(children: [
                    Text('30 - 35', textAlign: TextAlign.center),
                    Text('OBESE CLASS I \n(MODERATELY OBESE)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange))
                  ]),
                  TableRow(children: [
                    Text('35 - 40', textAlign: TextAlign.center),
                    Text('OBESE CLASS II\n(SEVERELY OBESE)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red))
                  ]),
                  TableRow(children: [
                    Text('40 - ∞', textAlign: TextAlign.center),
                    Text('OBESE CLASS III\n(VERY SEVERELY OBESE)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.brown))
                  ])
                ]),           
            const SizedBox(height: 20),
            const Text(
              'Basal Metabolic Rate (BMR)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'The Basal Metabolic Rate (BMR) calculates the minimum amount of energy required for a human being to survive, that is, the amount of Kcal/day the body consumes at rest. ',textScaleFactor: 1.1,),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Nowadays,the Miffin-St Jeor equation is believed to give the most accurate result and, therfore, it is what is used in this calculator.',textScaleFactor: 1.1,),
          ],
        ),
      ),
    );
  }
}
