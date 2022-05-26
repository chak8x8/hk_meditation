
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hk_meditaiton/constant.dart';
import 'package:hk_meditaiton/views/today_view.dart';
import 'package:hk_meditaiton/views/welcome_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Form(
          key: _loginFormKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,

                  validator: (String? value){
                    if (value == null || value.isEmpty)
                    {
                      return "It should not be empty";
                    }else if(value.contains('@') == false) {
                      return "It must be an email address";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8.0,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: (){
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: _secureText,
                  controller: _passwordController,
                  validator: (String? value){
                    if (value == null || value.isEmpty) {
                      return "Please type a proper password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){
                      if (_loginFormKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return TodayView();}),);
                      }
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

              ],
            ),
          ),
        ),
      ],
    );
  }
}
