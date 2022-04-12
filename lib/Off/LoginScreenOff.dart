import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'HomeOff.dart';

class LoginScreenOff extends StatefulWidget {
  const LoginScreenOff({Key? key}) : super(key: key);

  @override
  State<LoginScreenOff> createState() => _LoginScreenOffState();
}

class _LoginScreenOffState extends State<LoginScreenOff> {
  void showToast() => Fluttertoast.showToast(
    msg: "Log in Successed!",
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black54),
                onPressed: () {
                  Get.to(const HomeOff());
                },
              ),
            );
          }),
          title: const Text(
            "Account",
            style: TextStyle(fontSize: 23, color: Colors.black54),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent
        /*
          actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart, size: 40),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartOn()));
              },
            ),
          ),

        ],
        */
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white, Colors.blueAccent])),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 50),
                        buildEmail(),
                        const SizedBox(height: 30),
                        buildPassword(),
                        forgotPassword(),
                        logInButton(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
         */
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54)
              ]),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black54),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 16,
                ),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        */
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54)
              ]),
          height: 60,
          child: const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black54),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 16,
                ),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget forgotPassword() {
    return (Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot your Password?',
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ),
    ));
  }

  Widget logInButton() {
    return (Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showToast();
        },
        child: const Text(
          'Log In',
          style: TextStyle(fontSize: 19, color: Colors.black54),
        ),
      ),
    ));
  }
}
