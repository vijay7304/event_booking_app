import 'package:event_booking_app/models/event_data_model.dart';
import 'package:flutter/material.dart';

class eventDetial extends StatelessWidget {

  final eventDataModel eventDataModels;
  const eventDetial({Key? key,required this.eventDataModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(eventDataModels.eventName),),
      body: Center(
           child: Expanded(
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Image.network(eventDataModels.ImageURL, width: 1000,height: 300,),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Text('Event name: ${eventDataModels.eventName}'),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Text('Event Description: ${eventDataModels.description}'),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Text('Event location: ${eventDataModels.location}'),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Text('Event date: ${eventDataModels.date}'),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 Text('Event time: ${eventDataModels.time}'),
                 Padding(padding: EdgeInsets.only(top: 20.0),),
                 RaisedButton(onPressed: (){},
                   child: Text("Book Now"),
                   textColor: Colors.white,
                   color: Colors.blue,
                 )
               ],
             ),
           ),

      ),
    );
  }
}


