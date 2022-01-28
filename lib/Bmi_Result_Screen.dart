import 'package:flutter/material.dart';

class Bmi_Result_Screen extends StatelessWidget {
  late bool isMale;
  late int bmiValue;
  late int ageValue;


  Bmi_Result_Screen(this.isMale, this.bmiValue, this.ageValue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 32, 42, 0.9),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 32, 42, 0.9),
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          "BMI Result"
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             width: double.infinity,
             height: 700,
             margin: EdgeInsets.symmetric(
               horizontal: 20
             ),
             decoration: BoxDecoration(
               color: Color.fromRGBO(52, 73, 94 , 0.3),
               borderRadius: BorderRadius.circular(5),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 isMale ? Image(
                   image: AssetImage("images/meal.png"),
                   width: 90,
                   height: 90,
                 ):Image(
                   image: AssetImage("images/femeal.png"),
                   width: 90,
                   height: 90,
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   "AGE: ${ageValue}",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   "BMI: ${bmiValue}",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
               ],
             ),
           ),

         ],
        ),
      ),
    );
  }
}
