import 'package:flutter/material.dart';
import 'package:hk_meditaiton/constant.dart';
import 'package:hk_meditaiton/views/login_view.dart';


class WelcomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Size portion = size * 0.8;

    return Center(
      child: Container(
        width: size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  text: '',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(text: 'Meditation App', style: TextStyle(color: kPrimaryButtonColour),),
                    TextSpan(text: ' to transform your life'),
                  ],
                ),
              ),
            ),
            // Text(
            //   'Login with your detail',
            //   style: TextStyle(
            //     color: Colors.black12,
            //     fontSize: 5,
            //   ),
            // ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return LoginView();
                          },
                      ),
                  );
                },
                child: Text('LOGIN', style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryButtonColour),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){

                },
                child: Text('SIGNUP', style: TextStyle(color: kPrimaryButtonColour),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: kPrimaryButtonColour),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
