import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'CartOn.dart';
import 'HomeOn.dart';

class LoginScreenOn extends StatefulWidget {
  const LoginScreenOn({Key? key}) : super(key: key);

  @override
  State<LoginScreenOn> createState() => _LoginScreenOnState();
}

class _LoginScreenOnState extends State<LoginScreenOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, size: 40),
              onPressed: () {
                Get.to(const HomeOn());
              },
            ),
          );
        }),
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 35),
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
                        colors: [Colors.yellow, Colors.yellowAccent])),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 40,
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
                )
              )
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
         const Text('Email', style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),
        ),
         const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child:  const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black54
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black
              )
            ),
          ),
        )
      ],
    );
  }
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Password', style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:  const TextField(
            obscureText: true ,
            style: TextStyle(
                color: Colors.black54
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black
                )
            ),
          ),
        )
      ],
    );
  }
  Widget forgotPassword() {
    return(
      Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: const Text('Forgot your Password?',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),

        ),
      )
    );
  }
  Widget logInButton(){
    return(
      Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){}, child: Text('Log In', style: TextStyle(fontSize: 29),),
        ),
      )
    );
  }
}
