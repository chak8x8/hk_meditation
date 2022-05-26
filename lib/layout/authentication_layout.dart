// import 'dart:html';
// import 'package:flutter/material.dart';
// import 'package:hk_meditaiton/shared/styles.dart';
// import 'package:hk_meditaiton/shared/ui_helper.dart';
//
// class AuthenticationLayout extends StatelessWidget {
// String title;
// String subtitle;
// String mainButtonTitle;
// Widget form;
// bool showsTermsText;
// String? validationMessage;
// bool busy;
// Function()? onMainButtonTapped;
// Function()? onCreateAccount;
//
//
// onForgetPassword(){
//
// }
//
// onBack(){
//
// }
//
//
//
// AuthenticationLayout({required this.title, required this.subtitle, required this.mainButtonTitle, required this.form, required this.showsTermsText, this.validationMessage, required this.busy, this.onMainButtonTapped});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: ListView(
//         children: [
//           if(onBack() == null) verticalSpaceLarge,
//           if(onBack() != null) verticalSpaceRegular,
//           if(onBack() != null)
//             IconButton(
//                 alignment: Alignment.centerLeft,
//                 onPressed: onBack,
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
//           if(onForgetPassword() != null)
//             Align(
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: onForgetPassword,
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
//                   color: kcPrimaryColour,
//                   borderRadius: BorderRadius.circular(8.0),
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
//           if(onCreateAccount != null)
//             GestureDetector(
//               onTap: onCreateAccount,
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
//           if(showsTermsText)
//             Text('By signing up, you agree to our terms, conditions and privacy policy',
//             style: ktsMediumGreyBodyText,
//             textAlign: TextAlign.center,
//             ),
//         ],
//       ),
//     );
//   }
// }
