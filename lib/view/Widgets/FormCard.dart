import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  FormCard(
      {required this.passwordController,
      required this.userNameController,
      required this.errorPassword,
      required this.errorUserName,});

  final TextEditingController passwordController;

  final TextEditingController userNameController;

  String? errorUserName, errorPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 1),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -10.0),
                  blurRadius: 10.0),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Login",
                  style: TextStyle(
                      fontSize: 45,
                      fontFamily: "Poppins-Bold",
                      letterSpacing: .6)),
              const SizedBox(
                height: 30,
              ),
              const Text("Username",
                  style: TextStyle(fontFamily: "Poppins-Medium", fontSize: 26)),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    errorText: errorUserName,
                    hintText: "username",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("PassWord",
                  style: TextStyle(fontFamily: "Poppins-Medium", fontSize: 26)),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    errorText: errorPassword,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "Poppins-Medium",
                          fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

// String? get _errorUserName {
//   // at any time, we can get the text from _controller.value.text
//   final text = _userNameController.value.text;
//   // Note: you can do your own custom validation here
//   // Move this logic this outside the widget for more testable code
//   if (text.isEmpty) {
//     return 'Can\'t be empty';
//   }
//   if (text.length < 4) {
//     return 'Too short';
//   }
//   // return null if the text is valid
//   return null;
// }
//
// String? get _errorPassword {
//   // at any time, we can get the text from _controller.value.text
//   final text = _passwordController.value.text;
//   // Note: you can do your own custom validation here
//   // Move this logic this outside the widget for more testable code
//   if (text.isEmpty) {
//     return 'Can\'t be empty';
//   }
//   if (text.length <= 5) {
//     return 'this is a weak password';
//   }
//   // return null if the text is valid
//   return null;
// }
}
