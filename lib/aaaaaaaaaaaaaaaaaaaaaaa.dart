// // // // // import 'package:eshop_multivendor/AuthenticationView/VerifyOtp.dart';
// // // // // import 'package:eshop_multivendor/AuthenticationView/signup.dart';
// // // // // import 'package:flutter/cupertino.dart';
// // // // // import 'package:flutter/material.dart';
// // // // //
// // // // // import '../Helper/AppBtn.dart';
// // // // // import '../Helper/Color.dart';
// // // // //
// // // // // class LoginScreen extends StatefulWidget {
// // // // //   const LoginScreen({Key? key}) : super(key: key);
// // // // //
// // // // //   @override
// // // // //   State<LoginScreen> createState() => _LoginScreenState();
// // // // // }
// // // // //
// // // // // class _LoginScreenState extends State<LoginScreen> {
// // // // //   int _value = 1;
// // // // //   bool isMobile = false;
// // // // //   bool isSendOtp = false;
// // // // //   num? otp;
// // // // //   bool isLoading = false;
// // // // //
// // // // //
// // // // //   TextEditingController emailController = TextEditingController();
// // // // //   TextEditingController mobileController = TextEditingController();
// // // // //   TextEditingController passwordController = TextEditingController();
// // // // //   final _formKey = GlobalKey<FormState>();
// // // // //   int selectedIndex = 1;
// // // // //
// // // // //   bool _isObscure = true;
// // // // //
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return SafeArea(
// // // // //       child: Scaffold(
// // // // //         resizeToAvoidBottomInset: false,
// // // // //         backgroundColor: colors.primary,
// // // // //         body: SingleChildScrollView(
// // // // //           child: Column(
// // // // //             children: [
// // // // //               Padding(
// // // // //                 padding: const EdgeInsets.only(top: 0.75),
// // // // //                 child: Container(
// // // // //                     height: MediaQuery.of(context).size.height/3.0,
// // // // //                     child: Image.asset("assets/images/login.png",scale: 2.2,)),
// // // // //               ),
// // // // //               SingleChildScrollView(
// // // // //                 child: Container(
// // // // //                   width: double.maxFinite,
// // // // //                   decoration: BoxDecoration(
// // // // //                       color: colors.whiteTemp,
// // // // //                       borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
// // // // //                   ),
// // // // //
// // // // //                   height: MediaQuery.of(context).size.height/1.59,
// // // // //                   child: Column(
// // // // //                     children: [
// // // // //                       SizedBox(height: 20,),
// // // // //                       Text("Login",style: TextStyle(color: colors.blackTemp,fontSize: 30,fontWeight: FontWeight.bold),),
// // // // //                       SizedBox(height: 30,),
// // // // //                       Container(
// // // // //                         child: Row(
// // // // //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // // //                           children: [
// // // // //                             InkWell(
// // // // //                               onTap: () {
// // // // //                                 setState(() {
// // // // //                                   selectedIndex = 1;
// // // // //                                 });
// // // // //                               },
// // // // //                               child: Container(
// // // // //                                 child: Row(
// // // // //                                   children: [
// // // // //                                     Container(
// // // // //                                       height: 20,
// // // // //                                       width: 20,
// // // // //                                       padding: EdgeInsets.all(3),
// // // // //                                       decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(100),
// // // // //                                           border: Border.all(
// // // // //                                               color: selectedIndex == 1
// // // // //                                                   ? colors.secondary
// // // // //                                                   :colors.secondary,
// // // // //                                               width: 2)),
// // // // //                                       child: Container(
// // // // //                                         decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(100),
// // // // //                                           color: selectedIndex == 1
// // // // //                                               ? colors.secondary
// // // // //                                               : Colors.transparent,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                     SizedBox(
// // // // //                                       width: 10,
// // // // //                                     ),
// // // // //                                     Text(
// // // // //                                       "Email",
// // // // //                                       style: TextStyle(
// // // // //                                           color:colors.secondary,
// // // // //                                           fontSize: 20,
// // // // //                                           fontWeight: FontWeight.w500),
// // // // //                                     )
// // // // //                                   ],
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                             InkWell(
// // // // //                               onTap: () {
// // // // //                                 setState(() {
// // // // //                                   selectedIndex = 2;
// // // // //                                 });
// // // // //                               },
// // // // //                               child: Container(
// // // // //                                 child: Row(
// // // // //                                   children: [
// // // // //                                     Container(
// // // // //                                       height: 20,
// // // // //                                       width: 20,
// // // // //                                       padding: EdgeInsets.all(3),
// // // // //                                       decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(100),
// // // // //                                           border: Border.all(
// // // // //                                               color: selectedIndex == 2
// // // // //                                                   ? colors.secondary
// // // // //                                                   :colors.secondary,
// // // // //                                               width: 2)),
// // // // //                                       child: Container(
// // // // //                                         decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(100),
// // // // //                                           color: selectedIndex == 2
// // // // //                                               ? colors.secondary
// // // // //                                               : Colors.transparent,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                     SizedBox(
// // // // //                                       width: 10,
// // // // //                                     ),
// // // // //                                     Text(
// // // // //                                       "Mobile no.",
// // // // //                                       style: TextStyle(
// // // // //                                           color: colors.secondary,
// // // // //                                           fontSize: 20,
// // // // //                                           fontWeight: FontWeight.w500),
// // // // //                                     )
// // // // //                                   ],
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                       Padding(
// // // // //                         padding: const EdgeInsets.only(right: 15,left: 15,top: 20),
// // // // //                         child: Column(
// // // // //                           children: [
// // // // //                             selectedIndex == 1?
// // // // //                             Form(
// // // // //                               key: _formKey,
// // // // //                               child: Column(
// // // // //                                 crossAxisAlignment: CrossAxisAlignment.end,
// // // // //                                 children: [
// // // // //                                   Card(
// // // // //                                     shape: RoundedRectangleBorder(
// // // // //                                       borderRadius: BorderRadius.circular(10.0),
// // // // //                                     ),
// // // // //                                     elevation: 5,
// // // // //                                     child: TextFormField(
// // // // //                                       controller: emailController,
// // // // //                                       keyboardType: TextInputType.emailAddress,
// // // // //                                       decoration: InputDecoration(
// // // // //                                           prefixIcon: Icon(Icons.email_outlined,color: colors.secondary),
// // // // //                                           hintText: 'Email', hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // // //                                           border: InputBorder.none,
// // // // //                                           contentPadding: EdgeInsets.only(left: 10,top: 10)
// // // // //                                       ),
// // // // //                                       validator: (v) {
// // // // //                                         if (v!.isEmpty) {
// // // // //                                           return "Email is required";
// // // // //                                         }
// // // // //                                         if (!v.contains("@")) {
// // // // //                                           return "Enter Valid Email Id";
// // // // //                                         }
// // // // //                                       },
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   SizedBox(height: 10,),
// // // // //                                   Card(
// // // // //                                     shape: RoundedRectangleBorder(
// // // // //                                       borderRadius: BorderRadius.circular(10.0),
// // // // //                                     ),
// // // // //                                     elevation: 5,
// // // // //                                     child: TextFormField(
// // // // //                                       obscureText: _isObscure,
// // // // //                                       controller: passwordController,
// // // // //                                       keyboardType: TextInputType.name,
// // // // //                                       decoration: InputDecoration(
// // // // //                                           prefixIcon: Icon(Icons.lock_open_rounded,color: colors.secondary),
// // // // //                                           hintText: 'Password', hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // // //                                           border: InputBorder.none,
// // // // //                                           suffixIcon: IconButton(
// // // // //                                               icon: Icon(
// // // // //                                                   _isObscure ? Icons.visibility : Icons.visibility_off,color: colors.secondary,),
// // // // //                                               onPressed: () {
// // // // //                                                 setState(() {
// // // // //                                                   _isObscure = !_isObscure;
// // // // //                                                 });
// // // // //                                               }),
// // // // //                                           contentPadding: EdgeInsets.only(left: 10,top: 12)
// // // // //                                       ),
// // // // //                                       validator: (v) {
// // // // //                                         if (v!.isEmpty) {
// // // // //                                           return "Password is required";
// // // // //                                         }
// // // // //                                       },
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   InkWell(
// // // // //                                       onTap: (){
// // // // //                                         selectedIndex == 2;
// // // // //                                       },
// // // // //                                       child: Text("Forget Password?",style: TextStyle(color: colors.secondary),)),
// // // // //                                   SizedBox(height: 40,),
// // // // //                                   Btn(
// // // // //                                       height: 50,
// // // // //                                       width: 320,
// // // // //                                       title: 'Sign in',
// // // // //                                       onPress: () {
// // // // //                                         if (_formKey.currentState!.validate()) {
// // // // //                                           Navigator.push(context,
// // // // //                                               MaterialPageRoute(builder: (context) =>SignupScreen()));
// // // // //                                         } else {
// // // // //                                           const snackBar = SnackBar(
// // // // //                                             content: Text('All Fields are required!'),
// // // // //                                           );
// // // // //                                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // // //                                           //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // // //                                         }
// // // // //
// // // // //                                       }
// // // // //
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             )
// // // // //                                 : SizedBox.shrink(),
// // // // //                             selectedIndex == 2?
// // // // //                             Form(
// // // // //                               key: _formKey,
// // // // //                               child: Column(
// // // // //                                 children: [
// // // // //                                   Card(
// // // // //                                     shape: RoundedRectangleBorder(
// // // // //                                       borderRadius: BorderRadius.circular(10.0),
// // // // //                                     ),
// // // // //                                     elevation: 5,
// // // // //                                     child: TextFormField(
// // // // //                                       maxLength: 10,
// // // // //                                       maxLines: 1,
// // // // //                                       controller: mobileController,
// // // // //                                       keyboardType: TextInputType.phone,
// // // // //                                       decoration: InputDecoration(
// // // // //                                           counterText: "",
// // // // //                                           prefixIcon: Icon(Icons.perm_identity_sharp,color: colors.secondary),
// // // // //                                           hintText: 'Mobile ',hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // // //                                           border: InputBorder.none,
// // // // //                                           contentPadding: EdgeInsets.only(left: 10,top: 12)
// // // // //                                       ),
// // // // //                                       validator: (v) {
// // // // //                                         if (v!.isEmpty) {
// // // // //                                           return "Mobile is required";
// // // // //                                         }
// // // // //
// // // // //                                       },
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   SizedBox(height: 40,),
// // // // //                                   Btn(
// // // // //                                       height: 50,
// // // // //                                       width: 320,
// // // // //                                       title: 'Send OTP',
// // // // //                                       onPress: () {
// // // // //                                         if (_formKey.currentState!.validate()) {
// // // // //                                           Navigator.push(context,
// // // // //                                               MaterialPageRoute(builder: (context) =>VerifyOtp()));
// // // // //                                         } else {
// // // // //                                           const snackBar = SnackBar(
// // // // //                                             content: Text('All Fields are required!'),
// // // // //                                           );
// // // // //                                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // // //                                           //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // // //                                         }
// // // // //                                       }
// // // // //
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ) : SizedBox.shrink(),
// // // // //                             //  SizedBox(height: 30,),
// // // // //                             // Btn(
// // // // //                             //    height: 50,
// // // // //                             //    width: 320,
// // // // //                             //    title: selectedIndex==1?'Sign in': 'Send OTP',
// // // // //                             //    onPress: () {
// // // // //                             //      if (_formKey.currentState!.validate()) {
// // // // //                             //      } else {
// // // // //                             //        // Navigator.push(context,
// // // // //                             //        //     MaterialPageRoute(builder: (context) =>LoginScreen()));
// // // // //                             //        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // // //                             //      }
// // // // //                             //        const snackBar = SnackBar(
// // // // //                             //          content: Text('All Fields are required!'),
// // // // //                             //        );
// // // // //                             //        ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // // //                             //
// // // // //                             //      }
// // // // //                             //
// // // // //                             //  ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       )
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               )
// // // // //
// // // // //               // Container(
// // // // //               //   color: colors.primary,
// // // // //               //   child:
// // // // //               // )
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // //
// // // // import 'dart:convert';
// // // //
// // // // import 'package:eshop_multivendor/AuthenticationView/VerifyOtp.dart';
// // // // import 'package:eshop_multivendor/AuthenticationView/signup.dart';
// // // // import 'package:eshop_multivendor/New_model/login_response.dart';
// // // // import 'package:eshop_multivendor/Screen/Update_password.dart';
// // // // import 'package:flutter/cupertino.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';
// // // // import 'package:quick_pay/Theme/colors.dart';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:http/http.dart'as http;
// // // //
// // // // import '../Helper/AppBtn.dart';
// // // // import '../Helper/Color.dart';
// // // // import '../Helper/Constant.dart';
// // // // import '../Screen/HomeScreen.dart';
// // // //
// // // // class LoginScreen extends StatefulWidget {
// // // //   const LoginScreen({Key? key}) : super(key: key);
// // // //
// // // //   @override
// // // //   State<LoginScreen> createState() => _LoginScreenState();
// // // // }
// // // //
// // // // class _LoginScreenState extends State<LoginScreen> {
// // // //   int _value = 1;
// // // //   bool isMobile = false;
// // // //   bool isSendOtp = false;
// // // //   bool isLoading = false;
// // // //   bool isloader = false;
// // // //
// // // //
// // // //
// // // //
// // // //   TextEditingController emailController = TextEditingController();
// // // //   TextEditingController mobileController = TextEditingController();
// // // //   TextEditingController passwordController = TextEditingController();
// // // //   final _formKey = GlobalKey<FormState>();
// // // //
// // // //   LogInResponse? logInResponse ;
// // // //
// // // //   int selectedIndex = 1;
// // // //   bool _isObscure = true;
// // // //
// // // //   // String? password,
// // // //   //     mobile,
// // // //   //     username,
// // // //   //     email,
// // // //   //     id,
// // // //   //     mobileno;
// // // //
// // // //
// // // //   loginwitMobile() async {
// // // //     SharedPreferences preferences = await SharedPreferences.getInstance();
// // // //     preferences.setString('otp', "otp");
// // // //     preferences.setString('mobile', "mobile");
// // // //     print("this is apiiiiiiii");
// // // //     var headers = {
// // // //       'Cookie': 'ci_session=b13e618fdb461ccb3dc68f327a6628cb4e99c184'
// // // //     };
// // // //     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/dr_booking/app/v1/api/v_send_otp'));
// // // //     request.fields.addAll({
// // // //       'mobile': mobileController.text,
// // // //     });
// // // //     print("aaaaaaaaaaaaaaa${request.fields}");
// // // //
// // // //     request.headers.addAll(headers);
// // // //     http.StreamedResponse response = await request.send();
// // // //     if (response.statusCode == 200) {
// // // //       print("this is truuuuuuuuuuuuu");
// // // //       var finalresponse = await response.stream.bytesToString();
// // // //       final jsonresponse = json.decode(finalresponse);
// // // //       print("this is final responsesssssssssss${finalresponse}");
// // // //       // Future.delayed(Duration(seconds: 1)).then((_) {
// // // //       //   Navigator.pushReplacement(
// // // //       //       context,
// // // //       //       MaterialPageRoute(
// // // //       //           builder: (context) => VerifyOtp()
// // // //       //       ));
// // // //       // });
// // // //       if (jsonresponse['status'] == "success") {
// // // //         int? otp = jsonresponse["otp"];
// // // //         String mobile = jsonresponse["mobile"];
// // // //         print("otppppppppppppp${otp.toString()}");
// // // //         print("mobillllllllllllll${mobile.toString()}");
// // // //         print("this is final responsesssssssssss${finalresponse}");
// // // //         Fluttertoast.showToast(msg: '${jsonresponse['message']}');
// // // //         Navigator.pushReplacement(
// // // //             context,
// // // //             MaterialPageRoute(
// // // //                 builder: (context) => VerifyOtp(otp: otp.toString(),mobile:mobile.toString() ,)
// // // //             ));
// // // //       }
// // // //       else{
// // // //         Fluttertoast.showToast(msg: "${jsonresponse['message']}");
// // // //       }
// // // //     }
// // // //     else {
// // // //       print(response.reasonPhrase);
// // // //     }
// // // //
// // // //   }
// // // //
// // // //   emailPasswordLogin() async{
// // // //
// // // //
// // // //     var headers = {
// // // //       'Cookie': 'ci_session=ecadd729e7ab27560c282ba3660d365c7e306ca0'
// // // //     };
// // // //     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/dr_booking/app/v1/api/login'));
// // // //     // var request = http.MultipartRequest('POST', Uri.parse('${baseUrl}login'));
// // // //     request.fields.addAll({
// // // //       'email': '${emailController.text}',
// // // //       'password': '${passwordController.text}',
// // // //     });
// // // //     print("Checking all fields here ${request.fields}");
// // // //     request.headers.addAll(headers);
// // // //     http.StreamedResponse response = await request.send();
// // // //     if (response.statusCode == 200) {
// // // //       var finalResponse = await response.stream.bytesToString();
// // // //
// // // //       final jsonResponse = LogInResponse.fromJson(json.decode(finalResponse));
// // // //
// // // //
// // // //
// // // //       print("this is userIbbbbbbbbbbbbbbbbbbbbb=========>${finalResponse}");
// // // //       setState(() {
// // // //         logInResponse = jsonResponse;
// // // //       });
// // // //
// // // //
// // // //
// // // //       if(!(logInResponse?.error ?? false) ){
// // // //
// // // //         SharedPreferences prefs  = await SharedPreferences.getInstance();
// // // //         prefs.setString('userid', logInResponse?.data?.first.id ?? '54' );
// // // //         prefs.setBool('isLogin', true );
// // // //
// // // //
// // // //
// // // //
// // // //         Fluttertoast.showToast(msg: logInResponse?.message ?? '' );
// // // //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
// // // //
// // // //       }
// // // //       else{
// // // //         Fluttertoast.showToast(msg: logInResponse?.message ?? '' );
// // // //         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
// // // //       }
// // // //     }
// // // //     else {
// // // //       setState(() {
// // // //         isloader = false;
// // // //       });
// // // //       var finalResponse = await response.stream.bytesToString();
// // // //       final jsonResponse = json.decode(finalResponse);
// // // //       print(jsonResponse.toString());
// // // //     }
// // // //   }
// // // //
// // // //   // loginwitMobile() async {
// // // //   //   var headers = {
// // // //   //     'Cookie': 'ci_session=b13e618fdb461ccb3dc68f327a6628cb4e99c184'
// // // //   //   };
// // // //   //   var request = http.MultipartRequest('POST', Uri.parse('${baseUrl}v_send_otp'));
// // // //   //   request.fields.addAll({
// // // //   //     'mobile': mobileController.text,
// // // //   //   });
// // // //   //
// // // //   //   request.headers.addAll(headers);
// // // //   //
// // // //   //   http.StreamedResponse response = await request.send();
// // // //   //
// // // //   //   if (response.statusCode == 200) {
// // // //   //     if (mobile!.length == 10) {
// // // //   //       Future.delayed(Duration(seconds: 1)).then((_) {
// // // //   //         Navigator.pushReplacement(
// // // //   //             context,
// // // //   //             MaterialPageRoute(
// // // //   //                 builder: (context) => VerifyOtp()
// // // //   //                 ));
// // // //   //       });
// // // //   //     }else{
// // // //   //       Fluttertoast.showToast(msg: "The Mobile field must be at least 10 characters in length.");
// // // //   //       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// // // //   //       //   content: Text(
// // // //   //       //     "The Mobile field must be at least 10 characters in length.",
// // // //   //       //     textAlign: TextAlign.center,
// // // //   //       //     style: TextStyle(color: Theme.of(context).colorScheme.fontColor),
// // // //   //       //   ),
// // // //   //       //   backgroundColor: Theme.of(context).colorScheme.lightWhite,
// // // //   //       //   elevation: 1.0,
// // // //   //       // ));
// // // //   //     }
// // // //   //
// // // //   //     // print("success");
// // // //   //     // Navigator.push(context, MaterialPageRoute(builder: (c)=>VerifyOtp()));
// // // //   //     print(await response.stream.bytesToString());
// // // //   //   }
// // // //   //   else {
// // // //   //   print(response.reasonPhrase);
// // // //   //   }
// // // //   //
// // // //   // }
// // // //
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return SafeArea(
// // // //       child: Scaffold(
// // // //         resizeToAvoidBottomInset: false,
// // // //         backgroundColor: background,
// // // //         body: SingleChildScrollView(
// // // //           child: Column(
// // // //             children: [
// // // //               Padding(
// // // //                 padding: const EdgeInsets.only(top: 0.75),
// // // //                 child: Container(
// // // //                     height: MediaQuery.of(context).size.height/3.0,
// // // //                     child: Image.asset("assets/images/login.png",scale: 2.2,)),
// // // //               ),
// // // //               SingleChildScrollView(
// // // //                 child: Container(
// // // //                     width: double.maxFinite,
// // // //                     decoration: BoxDecoration(
// // // //                         color: colors.whiteTemp,
// // // //                         borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
// // // //                     ),
// // // //                     height: MediaQuery.of(context).size.height/1.59,
// // // //                     child: Column(
// // // //                       children: [
// // // //                         SizedBox(height: 20,),
// // // //                         Text("Login",style: TextStyle(color: colors.blackTemp,fontWeight: FontWeight.bold,fontSize: 35),),
// // // //                         SizedBox(height: 15,),
// // // //                         Row(
// // // //                           crossAxisAlignment: CrossAxisAlignment.center,
// // // //                           mainAxisAlignment: MainAxisAlignment.center,
// // // //                           children: [
// // // //                             Radio(
// // // //                               value: 1,
// // // //                               fillColor: MaterialStateColor.resolveWith(
// // // //                                       (states) =>  colors.secondary),
// // // //                               activeColor:  colors.secondary,
// // // //                               groupValue: _value,
// // // //                               onChanged: (int? value) {
// // // //                                 setState(() {
// // // //                                   _value = value!;
// // // //                                   isMobile = false;
// // // //                                 });
// // // //                               },
// // // //                             ),
// // // //                             Text(
// // // //                               "Email",
// // // //                               style: TextStyle(
// // // //                                   color: colors.secondary, fontSize: 21),
// // // //                             ),
// // // //                             SizedBox(height: 10,),
// // // //                             Radio(
// // // //                                 value: 2,
// // // //                                 fillColor: MaterialStateColor.resolveWith(
// // // //                                         (states) => colors.secondary),
// // // //                                 activeColor:   colors.secondary,
// // // //                                 groupValue: _value,
// // // //                                 onChanged: (int? value) {
// // // //                                   setState(() {
// // // //                                     _value = value!;
// // // //                                     isMobile = true;
// // // //                                   });
// // // //                                 }),
// // // //                             // SizedBox(width: 10.0,),
// // // //                             Text(
// // // //                               "Mobile No",
// // // //                               style: TextStyle(
// // // //                                   color:  colors.secondary, fontSize: 21),
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                         isMobile == false
// // // //                             ? Padding(
// // // //                           padding: const EdgeInsets.only(
// // // //                               top: 20.0, bottom: 20, left: 20, right: 20),
// // // //                           child: Form(
// // // //                             key: _formKey,
// // // //                             child: Column(
// // // //                               children: [
// // // //                                 Card(
// // // //                                   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
// // // //                                   elevation:4,
// // // //                                   child: Container(
// // // //                                     height: 60,
// // // //                                     decoration: BoxDecoration(
// // // //                                       borderRadius: BorderRadius.circular(15),
// // // //                                       color: colors.whiteTemp,
// // // //                                       //Theme.of(context).colorScheme.gray,
// // // //                                     ),
// // // //                                     child: Center(
// // // //                                       child: TextFormField(
// // // //                                         controller: emailController,
// // // //                                         validator: (msg) {
// // // //                                           if (msg!.isEmpty) {
// // // //                                             return "Please Enter Valid Email id!";
// // // //                                           }
// // // //                                         },
// // // //                                         decoration: InputDecoration(
// // // //                                           border: InputBorder.none,
// // // //                                           counterText: "",
// // // //                                           contentPadding: EdgeInsets.only(
// // // //                                               left: 15, top: 15),
// // // //                                           hintText: "Enter Email",hintStyle: TextStyle(color: colors.secondary),
// // // //                                           // labelText: "Enter Email id",
// // // //                                           prefixIcon: Icon(
// // // //                                             Icons.email,
// // // //                                             color: colors.secondary,
// // // //                                             size: 24,
// // // //                                           ),
// // // //                                           // border: OutlineInputBorder(
// // // //                                           //   borderRadius: BorderRadius.circular(10),
// // // //                                           // ),
// // // //                                         ),
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(
// // // //                                   height: 15,
// // // //                                 ),
// // // //                                 Card(
// // // //                                   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// // // //                                   elevation: 4,
// // // //                                   child: Container(
// // // //                                     height: 60,
// // // //                                     decoration: BoxDecoration(
// // // //                                         borderRadius: BorderRadius.circular(15),
// // // //                                         color:colors.whiteTemp ),
// // // //                                     child: Center(
// // // //                                       child: TextFormField(
// // // //                                         obscureText: _isObscure,
// // // //                                         controller: passwordController,
// // // //                                         // obscureText: _isHidden ? true : false,
// // // //                                         keyboardType: TextInputType.text,
// // // //                                         validator: (msg) {
// // // //                                           if (msg!.isEmpty) {
// // // //                                             return "Please Enter Valid Password!";
// // // //                                           }
// // // //                                         },
// // // //                                         // maxLength: 10,
// // // //                                         decoration: InputDecoration(
// // // //                                             border: InputBorder.none,
// // // //                                             counterText: "",
// // // //                                             contentPadding: EdgeInsets.only(
// // // //                                                 left: 15, top: 15),
// // // //                                             hintText: "Password",hintStyle: TextStyle(color: colors.secondary),
// // // //                                             prefixIcon: Icon(
// // // //                                               Icons.lock,
// // // //                                               color: colors.secondary,
// // // //                                               size: 24,
// // // //
// // // //                                             ),
// // // //                                             suffixIcon: IconButton(
// // // //                                                 icon: Icon(
// // // //                                                   _isObscure ? Icons.visibility : Icons.visibility_off,color: colors.secondary,),
// // // //                                                 onPressed: () {
// // // //                                                   setState(() {
// // // //                                                     _isObscure = !_isObscure;
// // // //                                                   });
// // // //                                                 })
// // // //                                         ),
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(
// // // //                                   height: 10,
// // // //                                 ),
// // // //                                 Padding(
// // // //                                   padding: const EdgeInsets.only(right: 8.0),
// // // //                                   child: InkWell(
// // // //                                     onTap: () {
// // // //                                       Navigator.push(
// // // //                                           context,
// // // //                                           MaterialPageRoute(
// // // //                                               builder: (context) =>
// // // //                                                   UpdatePassword()));
// // // //                                     },
// // // //                                     child: Row(
// // // //                                       mainAxisAlignment:
// // // //                                       MainAxisAlignment.end,
// // // //                                       children: [
// // // //                                         Text(
// // // //                                           "Forgot Password?",
// // // //                                           style: TextStyle(
// // // //                                               color: colors.secondary,
// // // //                                               fontWeight: FontWeight.w400,
// // // //                                               fontSize: 16),
// // // //                                         ),
// // // //                                       ],
// // // //                                     ),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(
// // // //                                   height: 5.0,
// // // //                                 ),
// // // //                                 InkWell(
// // // //                                   // onTap: (){
// // // //                                   //   setState((){
// // // //                                   //     isLoading = true;
// // // //                                   //   });
// // // //                                   //   if (_formKey.currentState!.validate()) {
// // // //                                   //     Navigator.push(context,MaterialPageRoute(builder:(context)=> SignupScreen()));
// // // //                                   //   } else {
// // // //                                   //     setState((){
// // // //                                   //       isLoading =false;
// // // //                                   //     });
// // // //                                   //     Fluttertoast.showToast(
// // // //                                   //         msg:
// // // //                                   //         "Please Enter Correct Credentials!!");
// // // //                                   //   }
// // // //                                   // },
// // // //                                     onTap: ()
// // // //                                     {
// // // //                                       setState(() {
// // // //                                         isloader = true;
// // // //                                       }); if (_formKey.currentState!.validate()) {
// // // //                                         emailPasswordLogin();
// // // //                                       } else {
// // // //                                         Fluttertoast.showToast(
// // // //                                             msg:
// // // //                                             "Please Enter Correct Credentials!!");
// // // //                                       }
// // // //                                     },
// // // //                                     child:
// // // //                                     Container(
// // // //                                       height: 50,
// // // //                                       width: MediaQuery.of(context).size.width,
// // // //                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: colors.secondary),
// // // //                                       child:
// // // //                                       // isloader == true ? Center(child: CircularProgressIndicator(color: Colors.white,),) :
// // // //                                       Center(child: Text("Sign In", style: TextStyle(fontSize: 18, color:colors.whiteTemp))),
// // // //                                     )
// // // //
// // // //                                 ),
// // // //                                 Row(
// // // //                                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                                   children: [
// // // //                                     Text("Dont have an account?",style: TextStyle(color: colors.blackTemp,fontSize: 14,fontWeight: FontWeight.bold),),
// // // //                                     TextButton(onPressed: (){
// // // //                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
// // // //                                     }, child: Text("SignUp",style: TextStyle(color: colors.secondary,fontSize: 16,fontWeight: FontWeight.bold),))
// // // //                                   ],
// // // //                                 )
// // // //
// // // //                                 // AppBtn(
// // // //                                 //   label: "Sign In",
// // // //                                 //   onPress: () {
// // // //                                 //     setState((){
// // // //                                 //       isLoading = true;
// // // //                                 //     });
// // // //                                 //     if (_formKey.currentState!.validate()) {
// // // //                                 //       loginEmail();
// // // //                                 //     } else {
// // // //                                 //       setState((){
// // // //                                 //         isLoading =false;
// // // //                                 //       });
// // // //                                 //       Fluttertoast.showToast(
// // // //                                 //           msg:
// // // //                                 //               "Please Enter Correct Credentials!!");
// // // //                                 //     }
// // // //                                 //   },
// // // //                                 // )
// // // //                               ],
// // // //                             ),
// // // //                           ),
// // // //                         )
// // // //                             : SizedBox.shrink(),
// // // //                         isMobile == true
// // // //                             ? Padding(
// // // //                           padding: EdgeInsets.symmetric(
// // // //                               horizontal: 20, vertical: 20),
// // // //                           child: Container(
// // // //                             height: 60,
// // // //                             decoration: BoxDecoration(
// // // //                               borderRadius: BorderRadius.circular(15),
// // // //                               color: colors.whiteTemp,
// // // //                               //Theme.of(context).colorScheme.gray,
// // // //                             ),
// // // //                             child: Card(
// // // //                               shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// // // //                               elevation: 4,
// // // //                               child: Center(
// // // //                                 child: TextFormField(
// // // //                                   controller: mobileController,
// // // //                                   keyboardType: TextInputType.number,
// // // //                                   maxLength: 10,
// // // //                                   decoration: InputDecoration(
// // // //                                     border: InputBorder.none,
// // // //                                     counterText: "",
// // // //                                     contentPadding:
// // // //                                     EdgeInsets.only(left: 15, top: 15),
// // // //                                     hintText: "Mobile Number",hintStyle: TextStyle(color: colors.secondary),
// // // //                                     prefixIcon: Icon(
// // // //                                       Icons.call,
// // // //                                       color:colors.secondary,
// // // //                                       size: 20,
// // // //                                     ),
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                         )
// // // //                             : SizedBox.shrink(),
// // // //                         isMobile == true
// // // //                             ? Padding(
// // // //                             padding: const EdgeInsets.only(
// // // //                                 top: 80, left: 20, right: 20),
// // // //                             child:
// // // //                             InkWell(
// // // //                                 onTap: (){
// // // //                                   setState((){
// // // //                                     isLoading = true;
// // // //                                   });
// // // //                                   if(mobileController.text.isNotEmpty && mobileController.text.length == 10){
// // // //                                     loginwitMobile();
// // // //                                   }else{
// // // //                                     setState((){
// // // //                                       isLoading = false;
// // // //                                     });
// // // //                                     Fluttertoast.showToast(msg: "Please enter valid mobile number!");
// // // //                                   }
// // // //                                 },
// // // //                                 child:  Container(
// // // //                                   height: 50,
// // // //                                   width: MediaQuery.of(context).size.width,
// // // //                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: colors.secondary),
// // // //                                   child:
// // // //                                   // isloader == true ? Center(child: CircularProgressIndicator(color: Colors.white,),) :
// // // //                                   Center(child: Text("Send Otp", style: TextStyle(fontSize: 18, color: colors.whiteTemp))),
// // // //                                 )
// // // //                             )
// // // //                           // AppBtn(
// // // //                           //   label: "Send OTP",
// // // //                           //   onPress: () {
// // // //                           //     setState((){
// // // //                           //       isLoading = true;
// // // //                           //     });
// // // //                           //     if(mobileController.text.isNotEmpty && mobileController.text.length == 10){
// // // //                           //     sendOtp();
// // // //                           //     }else{
// // // //                           //       Fluttertoast.showToast(msg: "Please enter valid mobile number!");
// // // //                           //     }
// // // //                           //   },
// // // //                           // )
// // // //                           // InkWell(
// // // //                           //   onTap: (){
// // // //                           //     sendOtp();
// // // //                           //   },
// // // //                           //   child: Container(
// // // //                           //       height: 48,
// // // //                           //       width:  MediaQuery.of(context).size.width/ 1.2,
// // // //                           //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColor().colorBg1()),
// // // //                           //       child: Center(child: Text("Send OTP", style: TextStyle(fontSize: 18, color: AppColor.PrimaryDark)))),
// // // //                           // ),
// // // //                         )
// // // //                             : SizedBox.shrink(),
// // // //                       ],
// // // //                     )
// // // //
// // // //                   // Column(
// // // //                   //   children: [
// // // //                   //     SizedBox(height: 20,),
// // // //                   //     Text("Login",style: TextStyle(color: colors.blackTemp,fontSize: 30,fontWeight: FontWeight.w500),),
// // // //                   //     SizedBox(height: 30,),
// // // //                   //     Container(
// // // //                   //       child: Row(
// // // //                   //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // //                   //         children: [
// // // //                   //           InkWell(
// // // //                   //             onTap: () {
// // // //                   //               setState(() {
// // // //                   //                 selectedIndex = 1;
// // // //                   //               });
// // // //                   //             },
// // // //                   //             child: Container(
// // // //                   //               child: Row(
// // // //                   //                 children: [
// // // //                   //                   Container(
// // // //                   //                     height: 20,
// // // //                   //                     width: 20,
// // // //                   //                     padding: EdgeInsets.all(3),
// // // //                   //                     decoration: BoxDecoration(
// // // //                   //                         borderRadius: BorderRadius.circular(100),
// // // //                   //                         border: Border.all(
// // // //                   //                             color: selectedIndex == 1
// // // //                   //                                 ? colors.secondary
// // // //                   //                                 :colors.secondary,
// // // //                   //                             width: 2)),
// // // //                   //                     child: Container(
// // // //                   //                       decoration: BoxDecoration(
// // // //                   //                         borderRadius: BorderRadius.circular(100),
// // // //                   //                         color: selectedIndex == 1
// // // //                   //                             ? colors.secondary
// // // //                   //                             : Colors.transparent,
// // // //                   //                       ),
// // // //                   //                     ),
// // // //                   //                   ),
// // // //                   //                   SizedBox(
// // // //                   //                     width: 10,
// // // //                   //                   ),
// // // //                   //                   Text(
// // // //                   //                     "Email",
// // // //                   //                     style: TextStyle(
// // // //                   //                         color:colors.secondary,
// // // //                   //                         fontSize: 14,
// // // //                   //                         fontWeight: FontWeight.w500),
// // // //                   //                   )
// // // //                   //                 ],
// // // //                   //               ),
// // // //                   //             ),
// // // //                   //           ),
// // // //                   //           InkWell(
// // // //                   //             onTap: () {
// // // //                   //               setState(() {
// // // //                   //                 selectedIndex = 2;
// // // //                   //               });
// // // //                   //             },
// // // //                   //             child: Container(
// // // //                   //               child: Row(
// // // //                   //                 children: [
// // // //                   //                   Container(
// // // //                   //                     height: 20,
// // // //                   //                     width: 20,
// // // //                   //                     padding: EdgeInsets.all(3),
// // // //                   //                     decoration: BoxDecoration(
// // // //                   //                         borderRadius: BorderRadius.circular(100),
// // // //                   //                         border: Border.all(
// // // //                   //                             color: selectedIndex == 2
// // // //                   //                                 ? colors.secondary
// // // //                   //                                 :colors.secondary,
// // // //                   //                             width: 2)),
// // // //                   //                     child: Container(
// // // //                   //                       decoration: BoxDecoration(
// // // //                   //                         borderRadius: BorderRadius.circular(100),
// // // //                   //                         color: selectedIndex == 2
// // // //                   //                             ? colors.secondary
// // // //                   //                             : Colors.transparent,
// // // //                   //                       ),
// // // //                   //                     ),
// // // //                   //                   ),
// // // //                   //                   SizedBox(
// // // //                   //                     width: 10,
// // // //                   //                   ),
// // // //                   //                   Text(
// // // //                   //                     "Mobile no.",
// // // //                   //                     style: TextStyle(
// // // //                   //                         color: colors.secondary,
// // // //                   //                         fontSize: 14,
// // // //                   //                         fontWeight: FontWeight.w500),
// // // //                   //                   )
// // // //                   //                 ],
// // // //                   //               ),
// // // //                   //             ),
// // // //                   //           ),
// // // //                   //         ],
// // // //                   //       ),
// // // //                   //     ),
// // // //                   //     Padding(
// // // //                   //       padding: const EdgeInsets.only(right: 15,left: 15,top: 20),
// // // //                   //       child: Column(
// // // //                   //         children: [
// // // //                   //       selectedIndex == 1?
// // // //                   //         Form(
// // // //                   //           key: _formKey,
// // // //                   //           child: Column(
// // // //                   //             crossAxisAlignment: CrossAxisAlignment.end,
// // // //                   //             children: [
// // // //                   //               Card(
// // // //                   //                 shape: RoundedRectangleBorder(
// // // //                   //                   borderRadius: BorderRadius.circular(10.0),
// // // //                   //                 ),
// // // //                   //                 elevation: 4,
// // // //                   //                 child: TextFormField(
// // // //                   //                   controller: emailController,
// // // //                   //                   keyboardType: TextInputType.text,
// // // //                   //                   decoration: InputDecoration(
// // // //                   //                       prefixIcon: Icon(Icons.email_outlined,color: colors.secondary),
// // // //                   //                       hintText: 'Email', hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // //                   //                       border: InputBorder.none,
// // // //                   //                       contentPadding: EdgeInsets.only(left: 10,top: 10)
// // // //                   //                   ),
// // // //                   //                   validator: (v) {
// // // //                   //                     if (v!.isEmpty) {
// // // //                   //                       return "Email is required";
// // // //                   //                     }
// // // //                   //                     if (!v.contains("@")) {
// // // //                   //                       return "Enter Valid Email Id";
// // // //                   //                     }
// // // //                   //                   },
// // // //                   //                 ),
// // // //                   //               ),
// // // //                   //               SizedBox(height: 10,),
// // // //                   //               Card(
// // // //                   //                 shape: RoundedRectangleBorder(
// // // //                   //                   borderRadius: BorderRadius.circular(10.0),
// // // //                   //                 ),
// // // //                   //                 elevation: 5,
// // // //                   //                 child: TextFormField(
// // // //                   //                   controller: passwordController,
// // // //                   //                   obscureText: true,
// // // //                   //                   keyboardType: TextInputType.text,
// // // //                   //                   decoration: InputDecoration(
// // // //                   //                       prefixIcon: Icon(Icons.lock_open_rounded,color: colors.secondary),
// // // //                   //                       hintText: 'Password', hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // //                   //                       border: InputBorder.none,
// // // //                   //                       contentPadding: EdgeInsets.only(left: 10,top: 12)
// // // //                   //                   ),
// // // //                   //                   validator: (v) {
// // // //                   //                     if (v!.isEmpty) {
// // // //                   //                       return "Password is required";
// // // //                   //                     }
// // // //                   //                   },
// // // //                   //                 ),
// // // //                   //               ),
// // // //                   //
// // // //                   //               InkWell(
// // // //                   //                 onTap: (){
// // // //                   //                   Navigator.push(context,MaterialPageRoute(builder: (context)=>UpdatePassword()));
// // // //                   //                 },
// // // //                   //                   child: Padding(
// // // //                   //                     padding: const EdgeInsets.all(8.0),
// // // //                   //                     child: Text("Forget Password?",style: TextStyle(color: colors.secondary),),
// // // //                   //                   )),
// // // //                   //               SizedBox(height: 40,),
// // // //                   //               Padding(
// // // //                   //                 padding: const EdgeInsets.only(right:10.0),
// // // //                   //                 child: Btn(
// // // //                   //                     height: 50,
// // // //                   //                     width: 350,
// // // //                   //                     title: 'Sign in',
// // // //                   //                     onPress: () {
// // // //                   //                       if (_formKey.currentState!.validate()) {
// // // //                   //                         Navigator.push(context,
// // // //                   //                             MaterialPageRoute(builder: (context) =>SignupScreen()));
// // // //                   //                       } else {
// // // //                   //                         const snackBar = SnackBar(
// // // //                   //                           content: Text('All Fields are required!'),
// // // //                   //                         );
// // // //                   //                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // //                   //                         //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // //                   //                       }
// // // //                   //
// // // //                   //                     }
// // // //                   //
// // // //                   //                 ),
// // // //                   //               ),
// // // //                   //             ],
// // // //                   //           ),
// // // //                   //         )
// // // //                   //           : SizedBox.shrink(),
// // // //                   //           selectedIndex == 2?
// // // //                   //           Form(
// // // //                   //             key: _formKey,
// // // //                   //             child: Column(
// // // //                   //               children: [
// // // //                   //                 Card(
// // // //                   //                   shape: RoundedRectangleBorder(
// // // //                   //                     borderRadius: BorderRadius.circular(10.0),
// // // //                   //                   ),
// // // //                   //                   elevation: 5,
// // // //                   //                   child: TextFormField(
// // // //                   //                     maxLength: 10,
// // // //                   //                     maxLines: 1,
// // // //                   //                     controller: mobileController,
// // // //                   //                     keyboardType: TextInputType.number,
// // // //                   //                     decoration: InputDecoration(
// // // //                   //                         counterText: "",
// // // //                   //                         prefixIcon: Icon(Icons.perm_identity_sharp,color: colors.secondary),
// // // //                   //                         hintText: 'Mobile ',hintStyle: TextStyle(fontSize: 15.0, color: colors.secondary),
// // // //                   //                         border: InputBorder.none,
// // // //                   //                         contentPadding: EdgeInsets.only(left: 10,top: 12)
// // // //                   //                     ),
// // // //                   //                     validator: (v) {
// // // //                   //                       if (v!.isEmpty) {
// // // //                   //                         return "Mobile is required";
// // // //                   //                       }
// // // //                   //
// // // //                   //                     },
// // // //                   //                   ),
// // // //                   //                 ),
// // // //                   //                 SizedBox(height: 40,),
// // // //                   //                 Btn(
// // // //                   //                     height: 50,
// // // //                   //                     width: 350,
// // // //                   //                     title: 'Send OTP',
// // // //                   //                     onPress: () {
// // // //                   //                       if (_formKey.currentState!.validate()) {
// // // //                   //                         Navigator.push(context,
// // // //                   //                             MaterialPageRoute(builder: (context) =>VerifyOtp()));
// // // //                   //                       } else {
// // // //                   //                         const snackBar = SnackBar(
// // // //                   //                           content: Text('All Fields are required!'),
// // // //                   //                         );
// // // //                   //                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // //                   //                         //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // //                   //                       }
// // // //                   //                     }
// // // //                   //
// // // //                   //                 ),
// // // //                   //               ],
// // // //                   //             ),
// // // //                   //           ) : SizedBox.shrink(),
// // // //                   //          //  SizedBox(height: 30,),
// // // //                   //          // Btn(
// // // //                   //          //    height: 50,
// // // //                   //          //    width: 320,
// // // //                   //          //    title: selectedIndex==1?'Sign in': 'Send OTP',
// // // //                   //          //    onPress: () {
// // // //                   //          //      if (_formKey.currentState!.validate()) {
// // // //                   //          //      } else {
// // // //                   //          //        // Navigator.push(context,
// // // //                   //          //        //     MaterialPageRoute(builder: (context) =>LoginScreen()));
// // // //                   //          //        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
// // // //                   //          //      }
// // // //                   //          //        const snackBar = SnackBar(
// // // //                   //          //          content: Text('All Fields are required!'),
// // // //                   //          //        );
// // // //                   //          //        ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // // //                   //          //
// // // //                   //          //      }
// // // //                   //          //
// // // //                   //          //  ),
// // // //                   //         ],
// // // //                   //       ),
// // // //                   //     )
// // // //                   //   ],
// // // //                   // ),
// // // //                 ),
// // // //               )
// // // //               // Container(
// // // //               //   color: colors.primary,
// // // //               //   child:
// // // //               // )
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // //
// // // class SignIn extends StatefulWidget {
// // //   @override
// // //   _SignInState createState() => _SignInState();
// // // }
// // //
// // // class _SignInState extends State<SignIn> {
// // //   bool hidePassword = true;
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Container(
// // //         width: MediaQuery.of(context).size.width,
// // //         height: MediaQuery.of(context).size.height,
// // //         decoration: BoxDecoration(
// // //             image: DecorationImage(
// // //                 image: AssetImage('images/a3.jpg'), fit: BoxFit.cover)),
// // //         child: Column(
// // //           children: <Widget>[
// // //             Expanded(
// // //               flex: 1,
// // //               child: Container(),
// // //             ),
// // //             Expanded(
// // //               flex: 2,
// // //               child: Container(
// // //                 decoration: BoxDecoration(
// // //                     color: Colors.white,
// // //                     borderRadius: BorderRadius.only(
// // //                       topLeft: Radius.circular(30),
// // //                       topRight: Radius.circular(30),
// // //                     )),
// // //                 child: Padding(
// // //                   padding:
// // //                   const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
// // //                   child: ListView(
// // //                     children: <Widget>[
// // //                       Text(
// // //                         'Welcome to Fashionista!',
// // //                         style: TextStyle(
// // //                             fontSize: 22, fontWeight: FontWeight.w600),
// // //                       ),
// // //                       SizedBox(
// // //                         height: 14,
// // //                       ),
// // //                       Text(
// // //                         'Sign in to continue',
// // //                         style: TextStyle(color: Colors.black54),
// // //                       ),
// // //                       SizedBox(
// // //                         height: 30,
// // //                       ),
// // //                       TextField(
// // //                         style: TextStyle(fontSize: 14, color: Colors.black54),
// // //                         decoration: InputDecoration(
// // //                             labelText: 'EMAIL',
// // //                             prefixIcon: Icon(
// // //                               Icons.email,
// // //                               size: 22,
// // //                             ),
// // //                             labelStyle: TextStyle(
// // //                                 color: Colors.black87,
// // //                                 fontSize: 15,
// // //                                 fontWeight: FontWeight.w600)),
// // //                       ),
// // //                       SizedBox(
// // //                         height: 15,
// // //                       ),
// // //                       TextField(
// // //                         style: TextStyle(fontSize: 14, color: Colors.black54),
// // //                         decoration: InputDecoration(
// // //                             labelText: 'PASSWORD',
// // //                             prefixIcon: Icon(
// // //                               Icons.lock,
// // //                               size: 22,
// // //                             ),
// // //                             suffixIcon: GestureDetector(
// // //                               onTap: () {
// // //                                 setState(() {
// // //                                   hidePassword = !hidePassword;
// // //                                 });
// // //                               },
// // //                               child: Icon(
// // //                                 hidePassword == true
// // //                                     ? FontAwesomeIcons.solidEye
// // //                                     : FontAwesomeIcons.solidEyeSlash,
// // //                                 size: 18,
// // //                               ),
// // //                             ),
// // //                             labelStyle: TextStyle(
// // //                                 color: Colors.black87,
// // //                                 fontSize: 15,
// // //                                 fontWeight: FontWeight.w600)),
// // //                         obscureText: hidePassword,
// // //                       ),
// // //                       SizedBox(
// // //                         height: 30,
// // //                       ),
// // //                       CustomButton(
// // //                         text: 'Login',
// // //                         bgColor: Theme.of(context).primaryColor,
// // //                         textColor: Colors.white,
// // //                       ),
// // //                       SizedBox(
// // //                         height: 30,
// // //                       ),
// // //                       Center(
// // //                         child: Text(
// // //                           'Forgot Password?',
// // //                           style: TextStyle(color: Colors.black54),
// // //                         ),
// // //                       ),
// // //                       SizedBox(
// // //                         height: 30,
// // //                       ),
// // //                       Container(
// // //                         decoration: BoxDecoration(
// // //                             border: Border.all(color: Colors.black87,width: 1),
// // //                             borderRadius: BorderRadius.circular(7)
// // //                         ),
// // //                         child: CustomButton(
// // //                           text: 'Sign Up',
// // //                           bgColor: Colors.white.withOpacity(0),
// // //                           textColor: Colors.black,
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),
// // //             )
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // class CustomButton extends StatelessWidget {
// // //   const CustomButton({
// // //     this.bgColor,
// // //     this.text,
// // //     this.textColor
// // //   });
// // //
// // //   final Color bgColor;
// // //   final Color textColor;
// // //   final String text;
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Row(
// // //       children: <Widget>[
// // //         Expanded(
// // //           child: Material(
// // //             color: bgColor,
// // //             borderRadius: BorderRadius.circular(7),
// // //             child: InkWell(
// // //               borderRadius: BorderRadius.circular(7),
// // //               onTap: () {},
// // //               child: Padding(
// // //                 padding: const EdgeInsets.all(14.0),
// // //                 child: Text(
// // //                   '$text',
// // //                   textAlign: TextAlign.center,
// // //                   style: TextStyle(
// // //                       fontWeight: FontWeight.w600,
// // //                       color: textColor,
// // //                       fontSize: 15),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         )
// // //       ],
// // //     );
// // //   }
// // // }
// //
// //
// // import 'dart:convert';
// //
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:eshop_multivendor/AuthenticationView/LoginScreen.dart';
// // import 'package:eshop_multivendor/Helper/Color.dart';
// // import 'package:eshop_multivendor/Screen/Awareness_Inputs_screen.dart';
// // import 'package:eshop_multivendor/Screen/Events.dart';
// // import 'package:eshop_multivendor/Screen/Online_webinar.dart';
// // import 'package:eshop_multivendor/Screen/Update_password.dart';
// // import 'package:eshop_multivendor/Screen/editorial.dart';
// // import 'package:eshop_multivendor/Screen/privacy_Policy.dart';
// // import 'package:eshop_multivendor/Screen/profile_screen.dart';
// // import 'package:eshop_multivendor/Screen/terms_condition.dart';
// // import 'package:eshop_multivendor/Screen/update_screen.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart'as http;
// // import 'package:shared_preferences/shared_preferences.dart';
// //
// // import '../New_model/userprofilemodel.dart';
// // import 'Pharma_product_screen.dart';
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   final GlobalKey<ScaffoldState> _key = GlobalKey(); // Cr
// //
// //   List<Map<String, dynamic>> newsList = [
// //     {"image": "assets/images/News Update.png", "title": "News Update",},
// //     {"image": "assets/images/Events.png", "title": "Events",},
// //     {"image": "assets/images/Online Webinars.png", "title": "Online Webinars",},
// //     {"image": "assets/images/Pharma Products.png", "title": "Pharma Products",},
// //     {"image": "assets/images/Editorial1.png", "title": "Editorial",},
// //     {"image": "assets/images/Awareness inputs.png", "title": "Awareness Inputs",},
// //   ];
// //
// //   Userprofilemodel? getprofile;
// //
// //   getuserProfile() async{
// //     SharedPreferences preferences = await SharedPreferences.getInstance();
// //     String? userId  =  preferences.getString('userid');
// //     var headers = {
// //       'Cookie': 'ci_session=9aba5e78ffa799cbe054723c796d2bd8f2f7d120'
// //     };
// //     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/dr_booking/app/v1/api/user_profile'));
// //     request.fields.addAll({
// //       'user_id': "${userId}"
// //     });
// //     print("this is userId=========>${request.fields}");
// //     request.headers.addAll(headers);
// //     http.StreamedResponse response = await request.send();
// //     if (response.statusCode == 200) {
// //       var finalResult = await response.stream.bytesToString();
// //       final jsonResponse = Userprofilemodel.fromJson(json.decode(finalResult));
// //
// //       print("this issssssss userIddddddddddddddd=========>${userId}");
// //       print("this is userrrrrrrrrrrrrrrrr=========>${jsonResponse}");
// //       print("this is userrrrrrrrrrrrrrrrr=========>${jsonResponse}");
// //       print("getuserdetails==============>${jsonResponse}");
// //
// //       print("this is userIbbbbbbbbbbbbbbbbbbbbb=========>${finalResult}");
// //       setState(() {
// //         getprofile = jsonResponse;
// //       });
// //     }
// //     else {
// //       print(response.reasonPhrase);
// //     }
// //   }
// //   void initState() {
// //     super.initState();
// //     getuserProfile();
// //
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       key: _key,
// //       drawer:getDrawer(),
// //       // appBar: customAppBar(context: context, text:"My Dashboard", isTrue: true, ),
// //       body: SafeArea(
// //         child: Column(
// //           children:[
// //             Container(
// //               height: MediaQuery.of(context).size.height /14,
// //               decoration: BoxDecoration(borderRadius: BorderRadius.only(
// //                 bottomLeft: Radius.circular(15),
// //                 //
// //                 bottomRight: Radius.circular(15),
// //               ),
// //                 color: colors.primary,
// //                 //   color: (Theme.of(context).colorScheme.apcolor)
// //
// //               ),
// //               // decoration: BoxDecoration(
// //               //
// //               //   // gradient: LinearGradient(
// //               //   //     begin: Alignment.bottomLeft,
// //               //   //     end: Alignment.bottomRight,
// //               //   //     colors: [
// //               //   //       colors.primary,
// //               //   //       colors.primary,
// //               //   //     ],
// //               //   //     stops: [
// //               //   //       0,
// //               //   //       1,
// //               //   //     ]),
// //               // ),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   InkWell(
// //                     onTap: (){
// //                       _key.currentState!.openDrawer();
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(right: 5),
// //                       child: Padding(
// //                         padding: const EdgeInsets.all(8.0),
// //                         child: Icon(Icons.dehaze_rounded,color: colors.whiteTemp,),
// //                       ),
// //                     ),
// //                   ),
// //                   Text('My Dashboard',style: TextStyle(color: Colors.white,fontSize: 20),),
// //                   // Icon(Icons.chat_rounded,color: Colors.white,),
// //                   InkWell(
// //                     onTap: (){
// //                       // Navigator.pop(context);
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(right: 10),
// //                       child: Icon(Icons.settings,color: colors.whiteTemp,),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             Expanded(child: ListView(children: [
// //               SizedBox(height: 10),
// //               _CarouselSlider(),
// //               Row(
// //                   mainAxisSize: MainAxisSize.max,
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children:[
// //                     Container(
// //                         width: 30.0,
// //                         height: 4.0,
// //                         margin: EdgeInsets.symmetric(
// //                             vertical: 10.0, horizontal: 2.0),
// //                         decoration: BoxDecoration(
// //                           color: colors.primary,
// //                           borderRadius: BorderRadius.circular(10),
// //                         )
// //                     ),
// //                     Container(
// //                         width: 30.0,
// //                         height: 4.0,
// //                         margin: EdgeInsets.symmetric(
// //                             vertical: 10.0, horizontal: 2.0),
// //                         decoration: BoxDecoration(
// //                           color: colors.primary,
// //                           borderRadius: BorderRadius.circular(10),
// //                         )
// //                     )
// //                   ]),
// //               // SizedBox(height: 20,),
// //               _NewsUpdatecard(),
// //             ],))
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //   _CarouselSlider(){
// //     return CarouselSlider(
// //       options: CarouselOptions(
// //         viewportFraction: 1.0,
// //         initialPage: 0,
// //         aspectRatio: 1.5,
// //
// //         enableInfiniteScroll: true,
// //         reverse: false,
// //         autoPlay: true,
// //         autoPlayInterval: Duration(seconds: 3),
// //         autoPlayAnimationDuration:
// //         Duration(milliseconds: 150),
// //         enlargeCenterPage: false,
// //         scrollDirection: Axis.horizontal,
// //         height: 150.0,
// //
// //       ),
// //       items: [1,2,3,4,5].map((i) {
// //         return Builder(
// //           builder: (BuildContext context) {
// //             return Container(
// //               width: MediaQuery.of(context).size.width/0.5,
// //               margin: EdgeInsets.symmetric(horizontal: 10.0,),
// //               child: ClipRRect(
// //                   borderRadius: BorderRadius.circular(20),
// //                   child: Image.asset("assets/images/News Update2.png",)
// //                 // Image.network(
// //                 //   "${val.image}",
// //                 //   fit: BoxFit.fill,
// //                 // )
// //               ),
// //             );
// //           },
// //         );
// //       }).toList(),
// //     );
// //
// //   }
// //
// //   newsCard(int i){
// //     return Padding(
// //       padding: const EdgeInsets.all(4.0),
// //       child: InkWell(
// //         onTap: (){
// //           if(i == 0) {
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => UpdsateScreen()));
// //           }else if(i ==1){
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => EventsScreen()));
// //
// //           }else if(i == 2){
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => OnlineWebinar()));
// //           } else if (i==3){
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => PharmaProductScreen()));
// //           } else if (i==4){
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => Editorial()));
// //           } else {
// //             Navigator.push(
// //                 context, MaterialPageRoute(builder: (C) => AwarenessScreen()));
// //           }
// //         },
// //         child: Card(
// //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //             color: colors.primary,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Stack(
// //                     children:[
// //                       CircleAvatar(
// //                         backgroundColor: colors.secondary,
// //                         radius: 40,
// //                         child:Image.asset('${newsList[i]['image']}',height: 40,),
// //                       ),
// //                       Positioned(
// //                           right: 5,
// //                           height: 20,
// //                           width: 20,
// //                           child: Container(
// //                             decoration: BoxDecoration(
// //                                 color: Colors.red,
// //                                 borderRadius: BorderRadius.circular(60)),
// //                             child: Center(child: Text("${newsList.length}",style: TextStyle(color: Colors.white),)),
// //                           ))
// //                     ]
// //                 ),
// //                 Text("${newsList[i]['title']}",style: TextStyle(color: Colors.white),)
// //
// //               ],
// //             )),
// //       ),
// //     );
// //   }
// //   _NewsUpdatecard(){
// //     return  SizedBox(
// //       height:MediaQuery.of(context).size.height/1.3,
// //       width:MediaQuery.of(context).size.width,
// //       child: GridView.builder(
// //         shrinkWrap: false,
// //         physics: NeverScrollableScrollPhysics(),
// //         scrollDirection: Axis.vertical,
// //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //             crossAxisCount:2),
// //         itemBuilder:(context, index) {
// //           return newsCard(index);
// //         },
// //         itemCount: newsList.length,
// //       ),
// //     );
// //   }
// //   getDrawer() {
// //     return Container(
// //       color: Colors.white,
// //       width: MediaQuery.of(context).size.width / 1.3,
// //       child: ListView(
// //         children: <Widget>[
// //           Container(
// //             padding: EdgeInsets.symmetric(horizontal: 12),
// //             height: 120,
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 begin: Alignment.topRight,
// //                 end: Alignment.bottomLeft,
// //                 colors: [
// //                   Color(0xff2998E2),
// //                   Color(0xff2B5FE0),
// //                 ],
// //               ),
// //             ),
// //             child: Row(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               // main
// //               children: [
// //                 CircleAvatar(
// //                   radius: 40,
// //                   backgroundImage: NetworkImage(
// //                     "https://www.w3schools.com/howto/img_avatar.png",
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   width: 10,
// //                 ),
// //                 // userModel == null || userModel!.data == null
// //                 //     ? SizedBox.shrink()
// //                 //     :
// //                 Container(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Row(
// //                         children: [
// //                           Text(
// //                             "${getprofile?.user?.username}",
// //                             style: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 15,
// //                                 fontWeight: FontWeight.w500),
// //                           ),
// //                           SizedBox(
// //                             height: 3,
// //                           ),
// //                           Icon(
// //                             Icons.edit,
// //                             color: Colors.white,
// //                             size: 10,
// //                           ),
// //                         ],
// //                       ),
// //                       Text(
// //                         "${getprofile?.user?.email}",
// //                         style: TextStyle(
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.w500,
// //                             fontSize: 13),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(
// //             height: 10,
// //           ),
// //           Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 begin: Alignment.topRight,
// //                 end: Alignment.bottomLeft,
// //                 colors: [
// //                   colors.white10,
// //                   colors.primary,
// //                 ],
// //               ),
// //             ),
// //             child: ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.circular(50)),
// //                 child: Image.asset(
// //                   "assets/images/drawer1.png",scale: 1.3,
// //                   height: 40,
// //                   width: 40,
// //                 ),
// //               ),
// //               title: Text(' My Profile',
// //               ),
// //               onTap: () {
// //                 Navigator.push(context,
// //                     MaterialPageRoute(builder: (Context) =>ProfileScreen()));
// //                 // Navigator.push(
// //                 //   context,
// //                 //   MaterialPageRoute(builder: (context) => HomeScreen()),
// //                 // );
// //               },
// //             ),
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/home.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Home',
// //             ),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(
// //                     builder: (context) => HomeScreen(
// //                     )),
// //               );
// //             },
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/Term & Conditions.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Terms &Conditions',
// //             ),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) =>TermsCondition()),
// //               );
// //             },
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/Privacy Policy.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Privacy Policy',
// //             ),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) =>PrivacyPolicy()),
// //               );
// //             },
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/Change Password.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Change Password',
// //             ),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) =>UpdatePassword()),
// //               );
// //             },
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/Share App.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Share App',
// //             ),
// //             onTap: () {
// //               //   Navigator.push(
// //               //     context,
// //               //     MaterialPageRoute(builder: (context) => HomeScreen()),
// //               //   );
// //             },
// //           ),
// //           ListTile(
// //             leading: Image.asset(
// //               "assets/images/Sign Out.png",
// //               height: 40,
// //               width: 40,
// //             ),
// //             title: Text('Sign Out',
// //             ),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) =>LoginScreen()),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:quick_pay/Components/custom_options_grid_view.dart';
// import 'package:quick_pay/Components/winter_sale_widget.dart';
// import 'package:quick_pay/Locale/locales.dart';
// import 'package:quick_pay/Routes/routes.dart';
// import 'package:quick_pay/Theme/style.dart';
// import 'package:http/http.dart'as http;
// import 'package:quick_pay/model/userprofile.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class Payment {
//   String image;
//   String? title;
//   Function onTap;
//   Payment(this.image, this.title, this.onTap);
// }
//
// class _HomePageState extends State<HomePage> {
//   static final AdRequest request = AdRequest(
//     keywords: <String>['foo', 'bar'],
//     contentUrl: 'http://foo.com/bar.html',
//     nonPersonalizedAds: true,
//   );
//
//   BannerAd? _anchoredBanner;
//   bool _loadingAnchoredBanner = false;
//
//   Future<void> _createAnchoredBanner(BuildContext context) async {
//     final AnchoredAdaptiveBannerAdSize? size =
//     await AdSize.getAnchoredAdaptiveBannerAdSize(
//       Orientation.portrait,
//       MediaQuery.of(context).size.width.truncate(),
//     );
//
//     if (size == null) {
//       print('Unable to get height of anchored banner.');
//       return;
//     }
//     final BannerAd banner = BannerAd(
//       size: size,
//       request: request,
//       adUnitId: Platform.isAndroid
//           ? 'ca-app-pub-3940256099942544/6300978111'
//           : 'ca-app-pub-3940256099942544/2934735716',
//       listener: BannerAdListener(
//         onAdLoaded: (Ad ad) {
//           print('$BannerAd loaded.');
//           setState(() {
//             _anchoredBanner = ad as BannerAd?;
//           });
//         },
//         onAdFailedToLoad: (Ad ad, LoadAdError error) {
//           print('$BannerAd failedToLoad: $error');
//           ad.dispose();
//         },
//         onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
//         onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
//       ),
//     );
//     return banner.load();
//   }
//   getProfile() async {
//     var headers = {
//       'Cookie': 'ci_session=7ff77755bd5ddabba34d18d1a5a3b7fbca686dfa'
//     };
//     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/financego/app/v1/api/get_profile'));
//     request.fields.addAll({
//       'user_id': '3'
//     });
//
//     request.headers.addAll(headers);
//
//     http.StreamedResponse response = await request.send();
//
//     if (response.statusCode == 200) {
//
//       print(await response.stream.bytesToString());
//     }
//     else {
//     print(response.reasonPhrase);
//     }
//
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     _anchoredBanner?.dispose();
//   }
//   Userprofile? getprofile;
//
//   getuserProfile() async{
//     print("This Is User profilel============>");
//     // SharedPreferences preferences = await SharedPreferences.getInstance();
//     // String? userid = preferences.getString("userid");
//     var headers = {
//       'Cookie': 'ci_session=7ff77755bd5ddabba34d18d1a5a3b7fbca686dfa'
//     };
//     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/financego/app/v1/api/get_profile'));
//     request.fields.addAll({
//       'user_id': '3'
//     });
//
//     print("this is userId=========>${request.fields}");
//     request.headers.addAll(headers);
//     http.StreamedResponse response = await request.send();
//     if (response.statusCode == 200) {
//       var finalResult = await response.stream.bytesToString();
//       final jsonResponse = Userprofile.fromJson(json.decode(finalResult));
//
//       print("this is userIddddddddddddddd=========>${jsonResponse}");
//       print("getuserdetails==============>${jsonResponse}");
//
//       print("this is userIbbbbbbbbbbbbbbbbbbbbb=========>${finalResult}");
//       setState(() {
//         getprofile = jsonResponse;
//       });
//     }
//     else {
//       print(response.reasonPhrase);
//     }
//
//   }
//
//   void initState() {
//     super.initState();
//     getuserProfile();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     var locale = AppLocalizations.of(context)!;
//     List<Payment> _paymentOptions = [
//       Payment('assets/icons/ic_pay.png', locale.payOrSend, () {
//         Navigator.pushNamed(context, PageRoutes.scanPage);
//       }),
//       Payment('assets/icons/ic_add money.png', locale.addMoney, () {
//         Navigator.pushNamed(context, PageRoutes.addMoneyPage);
//       }),
//       Payment('assets/icons/ic_get payment.png', locale.getPayment, () {
//         Navigator.pushNamed(context, PageRoutes.getPaymentPage);
//       }),
//       Payment('assets/icons/ic_transactions.png', locale.transactions, () {
//         Navigator.pushNamed(context, PageRoutes.transactionPage);
//       }),
//     ];
//     List<Payment> _quickPays = [
//       Payment('assets/icons/ic_recharge.png', locale.recharge,
//               () {
//             Navigator.pushNamed(context, PageRoutes.phoneRechargePage);
//           }
//       ),
//       Payment('assets/icons/ic_electricity.png', locale.electricity, () {}),
//       Payment('assets/icons/ic_waterbill.png', locale.trainTicket, () {
//         // Navigator.push(
//         //     context,
//         //     MaterialPageRoute(
//         //         builder: (context) => BookTicket(
//         //               initialIndexTab: 0,
//         //             )));
//       }),
//       Payment('assets/icons/ic_gasbill.png', locale.flight,() {
//         // Navigator.push(
//         //     context,
//         //     MaterialPageRoute(
//         //         builder: (context) => BookTicket(
//         //               initialIndexTab: 1,
//         //             )));
//       }),
//       // Payment('assets/icons/ic_bus.png', locale.bus, () {
//       //   Navigator.push(
//       //       context,
//       //       MaterialPageRoute(
//       //           builder: (context) => BookTicket(
//       //                 initialIndexTab: 2,
//       //               )));
//       // }),
//       Payment('assets/icons/ic_dth.png', locale.dth,() {}),
//       // Payment('assets/icons/ic_broadband.png', locale.broadband, () {}),
//       Payment('assets/icons/ic_more.png', locale.more, () {}),
//     ];
//     return Builder(
//       builder: (BuildContext context) {
//         if (!_loadingAnchoredBanner) {
//           _loadingAnchoredBanner = true;
//           _createAnchoredBanner(context);
//         }
//         return Scaffold(
//           body: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: 180,
//                       decoration: BoxDecoration(
//                           gradient: linearGrad,
//                           borderRadius: BorderRadius.vertical(
//                               bottom: Radius.circular(8))),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 8, right: 8, top: 54, bottom: 8),
//                       child: Column(
//                         children: [
//                           TextField(
//                             readOnly: true,
//                             onTap: () {
//                               Navigator.pushNamed(
//                                   context, PageRoutes.searchPage);
//                             },
//                             decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor:
//                                 Theme.of(context).scaffoldBackgroundColor,
//                                 prefixIcon: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 12.0, horizontal: 10),
//                                   // child: QuickPayText(),
//                                 ),
//                                 suffixIcon: Icon(Icons.search),
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(16),
//                                     borderSide: BorderSide.none)),
//                           ),
//                           CustomGridView(_paymentOptions),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Stack(
//                   children: [
//                     Image.asset(
//                       'assets/imgs/Layer 1150.png',
//                       height: 260,
//                       width: MediaQuery.of(context).size.width,
//                       fit: BoxFit.fill,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 8, right: 8, top: 18, bottom: 8),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             locale.quickRechargesBillPays!,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyText1!
//                                 .copyWith(fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           CustomGridView(_quickPays)
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 if (_anchoredBanner != null)
//                   Container(
//                     width: _anchoredBanner!.size.width.toDouble(),
//                     height: _anchoredBanner!.size.height.toDouble(),
//                     child: AdWidget(ad: _anchoredBanner!),
//                   ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 // Stack(
//                 //   children: [
//                 //     Image.asset(
//                 //       'assets/imgs/Layer 1194.png',
//                 //       height: 200,
//                 //       width: MediaQuery.of(context).size.width,
//                 //       fit: BoxFit.fill,
//                 //     ),
//                 //     Padding(
//                 //       padding: const EdgeInsets.only(
//                 //           left: 8, right: 8, top: 18, bottom: 8),
//                 //       child: Column(
//                 //         crossAxisAlignment: CrossAxisAlignment.start,
//                 //         children: [
//                 //           // Text(
//                 //           //   locale.saveOnBillPayments!,
//                 //           //   style: Theme.of(context)
//                 //           //       .textTheme
//                 //           //       .bodyText1!
//                 //           //       .copyWith(fontSize: 16),
//                 //           // ),
//                 //           SizedBox(
//                 //             height: 8,
//                 //           ),
//                 //           SizedBox(
//                 //             height: 135,
//                 //             child: ListView.builder(
//                 //                 // padding: EdgeInsets.symmetric(horizontal: 8),
//                 //                 physics: BouncingScrollPhysics(),
//                 //                 scrollDirection: Axis.horizontal,
//                 //                 itemCount: 3,
//                 //                 itemBuilder: (context, index) {
//                 //                   return CustomOffersContainer();
//                 //                 }),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 WinterSaleBanner(),
//                 SizedBox(
//                   height: 30,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }



