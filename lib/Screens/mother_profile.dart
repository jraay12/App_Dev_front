import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/sister_profile.dart';

class MotherPage extends StatefulWidget {
  const MotherPage({Key? key}) : super(key: key);

  @override
  State<MotherPage> createState() => _MotherPageState();
}

class _MotherPageState extends State<MotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Mother's Profile"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            width: 500,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/mother.jpg'),
                        radius: 60,
                      ),
                      Column(
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                            child: Text("Email : merlincanete@gmail.com",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    color: Colors.white)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text("Facebook : Yhadz Canete",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    color: Colors.white)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Card(
                      elevation: 40,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: Colors.grey,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 12),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "PERSONAL INFORMATION",
                              style:  TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 12),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Card(
                              color: Colors.white,
                              child: Align(
                                child: ListTile(
                                  title:  Text('NAME',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  subtitle: Text("Merlin D. Canete",
                                      style:  TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue)),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("AGE",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              subtitle: Text("50 years old",
                                  style:  TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 12),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("GENDER",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              subtitle: Text("FEMALE",
                                  style:  TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("ADDRESS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              subtitle: Text(
                                  "12 - 28 St. Nazareth Cagayan De Oro City",
                                  style:  TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("Occupation",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              subtitle: Text(
                                  "Private Employee",
                                  style:  TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.only(bottom: 5))
                        ],
                      ),
                    )),
              ],
            ),
            padding: EdgeInsetsDirectional.only(bottom: 268),
          ),
        ));
  }
}
