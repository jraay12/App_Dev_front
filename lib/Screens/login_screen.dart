import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp/Services/auth_services.dart';
import 'package:flutterapp/Services/globals.dart';
import 'package:flutterapp/rounded_button.dart';
import 'package:http/http.dart' as http;

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textemail = TextEditingController();
  TextEditingController textpassword = TextEditingController();

  //String _email = '';
  //String _password = '';

  loginPressed() async {
    if (textemail.text.isNotEmpty && textpassword.text.isNotEmpty) {
      http.Response response = await AuthServices.login(textemail.text, textpassword.text);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const ProfilePage(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                      padding:
                      const EdgeInsetsDirectional.only(top: 250, bottom: 50),
                      child: const Align(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/my.jpg'),
                          radius: 100,
                        ),
                      )),
                  Card(
                    color: Colors.grey,
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 20),
                                controller: textemail,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: "Email Address",
                                    prefixIcon: Icon(Icons.email),
                                    prefixIconColor: Colors.blue,
                                    labelStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )),
                        ),
                        SizedBox(
                          height: 100,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 20),
                                controller: textpassword,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: "Password",
                                    prefixIcon: Icon(Icons.password),
                                    prefixIconColor: Colors.blue,
                                    labelStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )),
                        ),
                        const SizedBox(
                        ),
                        RoundedButton(
                          btnText: 'LOG IN',
                          onBtnPressed: () => loginPressed(),
                        ),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(bottom: 269))
                ],
              ),
            ),
          )
        ));
  }
}
