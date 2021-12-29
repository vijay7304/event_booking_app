import 'package:flutter/material.dart';

class addEvent extends StatefulWidget {
  const addEvent({Key? key}) : super(key: key);
  @override
  _addEventState createState() => _addEventState();
}

class _addEventState extends State<addEvent> {

  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  Future<Null> selectTimePicker(BuildContext context) async{

    final TimeOfDay? pickedtime = await showTimePicker(
        context: context,
        initialTime: time );

    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1940),
        lastDate: DateTime(2030));
    if(picked != date && pickedtime !=null  && picked != null ){
      setState(() {
        date = picked;
        time = pickedtime;
        // print(date.toString());
      });
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
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20.0),),
                Text("Add Event",style: TextStyle(fontSize: 25,color: Colors.blue),),
                Padding(padding: EdgeInsets.only(top: 20.0),),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Event Name",
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
                        labelText: "Event Discription", border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Location", border: OutlineInputBorder()
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
                Padding(padding: EdgeInsets.only(top: 20.0),),
                Text('Select date & time'),
                Padding(padding: EdgeInsets.only(top: 10.0),
                  child: FlatButton(onPressed: (){ selectTimePicker(context);},
                      child: Text('Event Date: ${date.day.toString()}/${date.month.toString()}/${date.year.toString()}  Event Time: ${time.hour}:${time.minute}',),
                      color: Colors.black26
                    ,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0
                  ),
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Add Event"),
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
