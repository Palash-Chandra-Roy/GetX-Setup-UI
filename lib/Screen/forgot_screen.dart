import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'otp_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back,
            color: Colors.black54,),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/image/forget.png',
                fit: BoxFit.cover,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                    Text(
                      "Password ? ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Don't worry ! It happens. Plase enter the  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black54),
                    ),
                    Text(
                      "address associated with your Account.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.alternate_email_sharp,
                      color: Colors.grey,),
                    hintText: 'Email Id / Mobile number ',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(height: 30,),
                Container(
                  width: 550,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtpScreen());
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
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
          ) ,
        ),
      ),

    );
  }
}
