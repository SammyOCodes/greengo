import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  String userName = '';
  TextEditingController passwordController = TextEditingController();
  String passWord = '';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
                'J.P Morgan Chase & Co.',
              style:TextStyle(color: Color(0xff238c00)),
            ),
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    labelText: 'SSO ID',
                  ),
                  onChanged: (text) {
                    setState(() {
                      userName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(userName),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    labelText: 'Password',
                  ),
                  onChanged: (text) {
                    setState(() {
                      passWord = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(passWord),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
          ]))),
    );
  }
}
