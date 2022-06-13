import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_setup_ui/Screen/forgot_screen.dart';
import 'package:getx_setup_ui/Screen/sinpu_screen.dart';

class SininScreen extends StatelessWidget {
  const SininScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    var width=MediaQuery.of(context ).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/signin.png',
                  fit: BoxFit.cover,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.alternate_email_sharp),
                    hintText: 'Email ID ',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock,color: Colors.grey,),
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off_outlined,color: Colors.grey,)),
                  obscureText: true,
                  cursorColor: Colors.white,
                ),
                SizedBox(height: 10,),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(),
                  SizedBox(
                    width: 150,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(ForgotScreen());
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      )),
                ]),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 550.h,
                  height: 50.h,
                  // width: 550,
                  // height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 130,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 130,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  color: Colors.grey[200],
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/image/google.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New to Logistics? ',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                           Get.to(SinupScreen());
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 150,
                      color:Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
