import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String txt;
   CustomButton({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF6078ea).withOpacity(.3),
                offset: const Offset(0.0, 8.0),
                blurRadius: 8.0)
          ]),
      child:  Center(
        child: Text(txt,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: "Poppins-Bold",
                fontSize: 17,
                letterSpacing: 1.0)),
      ),
    );
  }
}
