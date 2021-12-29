import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/screens/auth/sing_up.dart';
import 'package:event_booking_app/screens/events_page/landing_page.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login>{
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String emailValidate(value){
    if(value.isEmpty){
      return "required";
    }
    else
    {
      return "";
    }
  }
  String passwordValidate(value){
    if(value.isEmpty){
      return "required";
    }
    else
    {
      return "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Management"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            // autovalidateMode: AutovalidateMode.always,
            key: formkey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20.0),),
                Text("Login",style: TextStyle(fontSize: 25,color: Colors.blue),),
                Padding(padding: EdgeInsets.only(top: 20.0),),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder()
                  ),
                  validator: emailValidate,
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder()
                    ),
                    validator: passwordValidate,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => landingPage()),);
                    },
                    child: Text("Login"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(20),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child:FlatButton(onPressed: () { Navigator.push(context, MaterialPageRoute(
                      builder: (context) => singup()),); },
                    child: Text("Don't have account? SING UP"),
                    textColor: Colors.blue,

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
