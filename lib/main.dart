import 'package:flutter/material.dart';

void main() {
  runApp( const CurrencyConvertorMateral());
}
class CurrencyConvertorMateral extends StatefulWidget{
  const  CurrencyConvertorMateral({super.key});
  @override
  State<CurrencyConvertorMateral> createState() => _CurrencyConvertor();
}
class _CurrencyConvertor extends State<CurrencyConvertorMateral> {

  double result=0;
  final TextEditingController texting =TextEditingController();
  @override

  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black45,
        width: 3.0,
      ),
      borderRadius: BorderRadius.circular(60.0),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: const Text("Currency converter",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            backgroundColor: Colors.grey,
            centerTitle: true,
            elevation: 0,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Text( 'PKR :${result.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                  ),
                  TextField(
                    controller:texting,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.monetization_on_outlined,
                        size: 28,
                      ),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Please enter the value in USD',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,

                      ),
                      //contentPadding:const EdgeInsets.symmetric(vertical: 13),
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      result=double.parse(texting.text)*280;
                    });
                  },
                    style:const  ButtonStyle(
                      elevation: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      minimumSize: MaterialStatePropertyAll(Size(530, 50)),

                    ),
                    child: const Text(
                        "Convert", style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                  ),
                ],
              ),
            ),
          ),

        )

    );
  }
}