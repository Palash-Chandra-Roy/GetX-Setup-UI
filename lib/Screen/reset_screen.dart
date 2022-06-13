import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReSetScreen extends StatelessWidget {
  const ReSetScreen({Key? key}) : super(key: key);

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
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/image/reset_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Reset',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24),
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),

                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: 'New Password',
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        )),
                    obscureText: true,
                    cursorColor: Colors.white,
                  ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    hintText: "Confirm New Password",
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),

                  ),
                  cursorColor: Colors.white,
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 550,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Submitting',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white),

                    ),

                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 150,
                      color: Colors.grey,
                    ),
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
