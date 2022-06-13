import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'reset_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/otp_img.png',
                  fit: BoxFit.cover,
                ),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'An 4 digit code has benn sent to',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black38),
                    ),
                    Text(
                      '+880 1783191658',
                      style: TextStyle(fontSize: 18, color: Colors.black38),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '6',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height:60,
                      width: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '8',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '4',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       "Don't resived the code ?",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(ReSetScreen());
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 550,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtpScreen());
                    },
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 200,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
