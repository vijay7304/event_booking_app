import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  _singupState createState() => _singupState();
}

class _singupState extends State<singup> {
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
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20.0),),
                Text("Create Account",style: TextStyle(fontSize: 25,color: Colors.blue),),
                Padding(padding: EdgeInsets.only(top: 20.0),),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder()
                  ),
                  // validator: emailvalidate,
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Phone No", border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Address", border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password", border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Confrim Password",
                        border: OutlineInputBorder()
                    ),
                    // validator: passwordvalidate,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0
                  ),
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Sing Up"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(20),
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
