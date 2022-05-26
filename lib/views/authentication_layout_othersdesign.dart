// import 'package:flutter/material.dart';
// import 'package:hk_meditaiton/shared/styles.dart';
// import 'package:hk_meditaiton/shared/ui_helper.dart';
//
// // class SignupLayout extends StatelessWidget {
// //
// //   LoginView loginView = LoginView();
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: AuthenticationLayout(
// //         form: Text('Sign Up'),
// //       ),
// //     );
// //   }
// // }
// //
// // class LoginLayout extends StatelessWidget {
// //
// //   LoginView loginView = LoginView();
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: AuthenticationLayout(
// //         form: LoginView(),
// //       ),
// //     );
// //   }
// // }
//
//
// class AuthenticationLayout_otherdesign extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String mainButtonTitle;
//   final Widget form;
//   final bool? showTermsText;
//   final Function() onMainButtonTapped;
//   final Function()? onCreateAccountTapped;
//   final Function()? onForgotPassword;
//   final Function()? onBackPressed;
//   final String validationMessage;
//
//
//   const AuthenticationLayout_otherdesign({Key? key, required this.title, required this.subtitle, required this.mainButtonTitle, required this.form, this.showTermsText, required this.onMainButtonTapped, this.onCreateAccountTapped, this.onForgotPassword, this.onBackPressed, required this.validationMessage,}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: ListView(
//         children: [
//           if(onBackPressed == null) verticalSpaceLarge,
//           if(onBackPressed != null) verticalSpaceRegular,
//           if(onBackPressed != null)
//             IconButton(
//                 alignment: Alignment.centerLeft,
//                 onPressed: onBackPressed,
//                 icon: Icon(Icons.arrow_back_ios, color: Colors.black,)
//             ),
//           Text(title, style: TextStyle(fontSize: 34),),
//           verticalSpaceSmall,
//           SizedBox(
//             width: screenWidthPercentage(context, percentage: 0.7),
//             child: Text(
//               subtitle,
//               style: ktsMediumGreyBodyText,
//             ),
//           ),
//           verticalSpaceRegular,
//           form,
//           verticalSpaceRegular,
//           if(onForgotPassword != null)
//             Align(
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: onForgotPassword,
//                 child: Text(
//                   'Forgot Password?',
//                   style: ktsMediumGreyBodyText.copyWith(fontWeight: FontWeight.bold,),
//                 ),
//               ),
//             ),
//           verticalSpaceRegular,
//           if(validationMessage != null)
//             Text(validationMessage = "It is validated", style: TextStyle(color:  Colors.red, fontSize: kBodyTextSize),),
//           if(validationMessage != null) verticalSpaceRegular,
//           GestureDetector(
//             onTap: onMainButtonTapped,
//             child: Container(
//               width: double.infinity,
//               height: 50.0,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: kcPrimaryColour,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               child: busy?
//               CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.white),)
//                   :Text(
//                 mainButtonTitle,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14),
//               ),
//             ),
//           ),
//           verticalSpaceRegular,
//           if(onCreateAccountTapped != null)
//             GestureDetector(
//               onTap: onCreateAccountTapped,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Don\'t have an account?'),
//                   horizontalSpaceTiny,
//                   Text('Create an account',
//                     style: TextStyle(
//                       color: kcPrimaryColour,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           if(showTermsText)
//             Text('By signing up, you agree to our terms, conditions and privacy policy',
//               style: ktsMediumGreyBodyText,
//               textAlign: TextAlign.center,
//             ),
//         ],
//       ),
//     );
//   }
// }
