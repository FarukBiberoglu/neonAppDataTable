import 'package:flutter/material.dart';
import 'main.dart';

class PassengerDetails extends StatelessWidget {
  final Passenger passenger;

  PassengerDetails({required this.passenger});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${passenger.name} ${passenger.surname}')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${passenger.name}'),
            Text('Surname: ${passenger.surname}'),
            Text('Team: ${passenger.team}'),
            Text('Age: ${passenger.age}'),
            Text('Hometown: ${passenger.hometown}'),
            Text('Mail: ${passenger.mail}'),
          ],
        ),
      ),
    );
  }
}
