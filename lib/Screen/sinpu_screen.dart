import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_setup_ui/Screen/sinin_screen.dart';

class SinupScreen extends StatelessWidget {
  const SinupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/sign_up.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sign_Up",
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
                    icon: Icon(Icons.alternate_email_sharp,color: Colors.grey,),
                    hintText: 'Email  ',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_box_outlined,color:Colors.grey),
                    hintText: 'Full Name ',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 11,
                  decoration: InputDecoration(
                    icon: Icon(Icons.call,color: Colors.grey,),
                    hintText: 'Mobile',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text:  "By signing up, you're agree to our",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                          SizedBox(width: 5,),
                          RichText(
                              text: TextSpan(
                                text: "Terms & Conditions",
                                style: TextStyle(fontSize: 12, color: Colors.blue),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                text:'and ',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )),
                          SizedBox(width:5,),
                          RichText(
                              text: TextSpan(
                                text: "Privecy Policy ",
                                style: TextStyle(fontSize: 12, color: Colors.blue),
                              )
                          ),
                        ],
                      )

                    ],
                  ),
                SizedBox(height: 30,),
                Container(
                  width: 550,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Joined us before? ',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(SininScreen());
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
