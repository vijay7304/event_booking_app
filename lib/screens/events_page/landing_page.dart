import 'package:event_booking_app/models/event_data_model.dart';
import 'package:event_booking_app/screens/events_page/event_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/screens/events_page/add_event.dart';

class landingPage extends StatefulWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {

   static List<String> titleName =['Dj party','Birthday party'];
   static List<String> URLlink =['https://image.freepik.com/free-vector/character-illustration-people-with-party-icons_53876-66168.jpg','https://image.freepik.com/free-vector/character-illustration-people-with-party-icons_53876-66168.jpg'];
   static List<String> description =['Dj party full of enjoyment','Birthday party full of enjoyment'];
   static List<String> location  =['Mumbai,Maharashtra','Pune,Maharashtra'];
   static List<String> date  =['12 June 2020','15 May 2021'];
   static List<String> time  =['7 PM','6 PM'];

   final List<eventDataModel> eventInfo = List.generate(
      titleName.length, (index) => eventDataModel('${titleName[index]}', '${URLlink[index]}', '${location[index]}', '${date[index]}', '${time[index]}', '${description[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Event"),
        actions: [
          TextButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => addEvent()));
          }, child: Text('ADD EVENT'),
          style: TextButton.styleFrom(
            primary: Colors.white
          ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: eventInfo.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(eventInfo[index].eventName),
                subtitle: Text(eventInfo[index].description),
                trailing: Text('Location: ${eventInfo[index].location}'),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.network(eventInfo[index].ImageURL),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> eventDetial(eventDataModels: eventInfo[index])));
                },
              ),
            );
          }
      ),
    );
  }
}
