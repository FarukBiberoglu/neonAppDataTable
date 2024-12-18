import 'package:flutter/material.dart';
import 'package:untitled2/detailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titanic Passenger List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Passenger> passengers = [
    Passenger(
      name: 'John',
      surname: 'Doe',
      team: 'Flutter Team',
      age: 25,
      hometown: 'New York',
      mail: 'john.doe@example.com',
    ),
    
    Passenger(
      name: 'Jane',
      surname: 'Smith',
      team: 'iOS Team',
      age: 28,
      hometown: 'London',
      mail: 'jane.smith@example.com',
    ),
    Passenger(
      name: 'Jane',
      surname: 'Smith',
      team: 'iOS Team',
      age: 28,
      hometown: 'London',
      mail: 'jane.smith@example.com',
    ),Passenger(
      name: 'Jane',
      surname: 'Smith',
      team: 'iOS Team',
      age: 28,
      hometown: 'London',
      mail: 'jane.smith@example.com',
    ),Passenger(
      name: 'Jane',
      surname: 'Smith',
      team: 'iOS Team',
      age: 28,
      hometown: 'London',
      mail: 'jane.smith@example.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Titanic Passenger List')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Surname')),
            DataColumn(label: Text('Team')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Hometown')),
            DataColumn(label: Text('Mail')),
          ],
          rows: passengers.map((passenger) {

            return DataRow(
              cells: [
                DataCell(Text(passenger.name), onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PassengerDetails(passenger: passenger),
                    ),
                  );
                }),
                DataCell(Text(passenger.surname)),
                DataCell(Text(passenger.team)),
                DataCell(Text('${passenger.age}')),
                DataCell(Text(passenger.hometown)),
                DataCell(Text(passenger.mail)),

              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Passenger {
  String name;
  String surname;
  String team;
  int age;
  String hometown;
  String mail;

  Passenger({
    required this.name,
    required this.surname,
    required this.team,
    required this.age,
    required this.hometown,
    required this.mail,
  });
}
