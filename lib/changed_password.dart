// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'change_password_model.dart';
//import 'package:ui_degi/Home2.dart';
//import 'package:ui_degi/Statistics.dart';

//import 'details.dart';
TextEditingController newPasswordController = TextEditingController();
TextEditingController oldPasswordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class PasswordScreen extends StatefulWidget {
  PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  //final myController = TextEditingController();
  AutoGenerate? y;

  Future<void> getData(newPassword, oldPassword, confirmPassword) async {
    Dio dio = Dio();
    var formData = {
      "old_password": oldPassword,
      "new_password": newPassword,
      "confirm_new_password": confirmPassword
    };
    // Perform GET request to the endpoint "/users/<id>"
    var resp = await dio.post(
        "http://23.23.68.11/quiz_app/admin/public/api/change-password",
        data: formData,
        options: Options(headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiZDcyNDMzYzhjN2I0ZTU5ZWY2MjRjMjVkMmJiNzRlNWI1ZjljYmQ4Njc1NjgwZTJhYjY5NzliOTgyN2M5ZmYyM2MxMDY1N2FjZjE2YmYwOWIiLCJpYXQiOjE2NTY1MDU0OTEuODg2MjU5LCJuYmYiOjE2NTY1MDU0OTEuODg2MjY0LCJleHAiOjE2NzIzMTY2OTEuODc4MzUzLCJzdWIiOiI0NCIsInNjb3BlcyI6W119.nBF4I2ym9kFq6zM1lfzmSftLQ-45gs7k4iecgk6VacRk2HQOTWLow2k7wcP6b5dh6_G5ntRKgv4bbLVZcDpePsWq0Jw7iMF89fPmk6SHb4x5Y4ZQBnQwFnHvn-xHxWu-H7GjIg3qoWdU9VwRSDeUEaF7IlqLFR_wCSSTPueYxX4gF_dB1raViTIqVBAdBSjnnHXK0trvdnUt8IGTVmH4yvH5RDGrp7hrQAZWENZn8hSWDzZWlN48zWJvKqPF5ofKnhrA42ZzF94rrz53T0Cd4nxHpk8HaQH8pb8BiLLfmlZOOKjo6SMOZsMb863rTI3DBWtrVChxZXGCmASXKQ_mHJ2_xvjR8KxDaf4GZ3GzhmjYJRUa5JMXYgQDk-ZkkrWtJwgdw0n68wY8aXvVyghHoI9QELP8zbHR2GFS3eo-p84gPpY_5kUTZp6nnmbMpS06QZb1Az4EcttkqOEHU_o1UTUdltXAbeGq1g7UZ9aIgPFTJQS0Q8PkNAGCAYoyCW4u0ACB4wfNiFuUOIkjtUoQbWgFXGe-w5doawB6vv6xMvNPPlzCYIiLHgdEfOopjPN9V_acnNezRWcFyMd2Q5_N_-5I65tqo86GDyJo8qvziLxjidFEES9Zx6-KJERPUbLQOpgX7ta_zbWQG8WEUzKZMa1wEYHHJru700xxGV48Wwo'
        }));

    // Prints the raw data returned by the server
    debugPrint('User Info: ${resp.data}');

    // Parsing the raw JSON data to the User class

    y = AutoGenerate.fromJson(resp.data);
    setState(() {});
    debugPrint(y!.data);
    debugPrint(y!.message == "error" ? "gyft" : "successful");
  }

  // @override
  // void initState() {
  //   //_tabController = TabController(length: 2, vsync: this);
  //   super.initState();

  //   //getData();
  // }

  @override
  void dispose() {
    super.dispose();
    // _tabController?.dispose();
  }

  @override
  bool isObscure = false;
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Change Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // leading: InkWell(
        //   onTap: (() => Navigator.pop(context, MaterialPageRoute(builder: (context) => Details()))),
        //   child: SvgPicture.asset(
        //     "assets/image/arrow29@3x.svg",
        //     height: 5,
        //     width: 5,
        //     fit: BoxFit.scaleDown,
        //   ),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
                //   onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => Statistics()))),
                child: SvgPicture.asset(
              "assets/information@2x.svg",
            )),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/top_header@3x.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Lock@3x.png"), scale: 3),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const Text(
                  "Lorem Ipsum has been the industry's",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff505050)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "standard dummy text ever since the 1500s",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff505050)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Old Password'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text('Password'),
                          TextFormField(
                            controller: oldPasswordController,
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your old password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Password'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text('Password'),
                          TextFormField(
                            controller: newPasswordController,
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff505050)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: confirmPasswordController,
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your confirm password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  //onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => Home2()))),
                  child: Stack(
                    alignment: Alignment.topRight,
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        onTap: () {
                          getData(
                              newPasswordController.text,
                              oldPasswordController.text,
                              confirmPasswordController.text);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                  //  title: Text("AlertDialog"),
                                  //insetPadding: EdgeInsets.zero,
                                  insetPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),

                                  //   contentPadding: EdgeInsets.only(top: 10.0),
                                  content: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.83,
                                    height: MediaQuery.of(context).size.height *
                                        0.39,
                                    child: Column(
                                      children: [
                                        // InkWell(
                                        //   onTap: (() {
                                        //     Navigator.pop(context);
                                        //   }),
                                        //   child: Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.end,
                                        //     children: [
                                        //       Image.asset(
                                        //         "assets/cross2.png",
                                        //         width: MediaQuery.of(context)
                                        //                 .size
                                        //                 .width *
                                        //             0.06,
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                        Image.asset("assets/contact.png",
                                            scale: 3.0),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        // ignore: prefer_const_constructors
                                        Text(
                                          "Successful",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          y == null ? "" : y!.data,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff727272),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffFD9A3A),
                                          ),
                                          child: Center(
                                            child: InkWell(
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                y == null ? "" : y!.message,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                    // content: Container(
                                    //   height:
                                    //       MediaQuery.of(context).size.height * 0.35,
                                    //   width: MediaQuery.of(context).size.width,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(50),
                                    //   ),
                                    // ),
                                  ));
                            },
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.95,
                          decoration: BoxDecoration(
                              color: const Color(0xffFD9A3A),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'Save',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 21),
                          )),
                        ),
                      ),
                      Positioned(
                          top: 9,
                          right: 10,
                          child: SvgPicture.asset(
                            'assets/arrowlast 4.svg',
                            // scale: 2.7,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
