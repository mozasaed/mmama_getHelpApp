import 'package:flutter/material.dart';
import 'package:mmama/components/MyButton.dart';
import 'package:mmama/components/MyTextFields.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final unameController = TextEditingController();
  final psdController = TextEditingController();
   void signIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
        child: Column(
          children:  [
            const SizedBox(height: 60,),
          //logo
            Center(child: Image.asset('assets/images/mama_logo.jpeg',width: 150,)),

            const SizedBox(height: 25,),

          //welcome back
          const Text(
            'Mama & Mtoto App',
            style: TextStyle(color: Colors.blueAccent, fontSize: 20, fontWeight: FontWeight.w400),
          ),

            const SizedBox(height: 25,),
          //uname
          MyTextFields(
            controller: unameController,
            hintText: 'Username',
            obscureText: false,
          ),
            const SizedBox(height: 20,),
          //psd
            MyTextFields(
              controller: psdController,
              hintText: 'Password',
              obscureText: true,
            ),

          //4gt psd
            const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                    'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
            const SizedBox(height: 20,),
          //login btn
        MyButton(
            onTap: signIn
        ),
            const SizedBox(height: 30,),
          Row(
            children: const [
              Expanded(child:
              Divider(thickness: 0.5,color: Colors.grey,),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Or Continue With'),
              ),

              Expanded(child:
              Divider(thickness: 0.5,color: Colors.grey,),
              )

            ],
          ),
            const SizedBox(height: 15,),
       Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30),

           child: Center(

              child: Image.asset('assets/images/google.png', height: 40,),

           ),
         ),
       )

          //google sign

          //not a member register
        ],
      ),
      ),
      ),
    );

  }
}
