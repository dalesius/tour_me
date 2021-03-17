// TODO: feat: Add operator
// TODO: feat: Reservations (list, cancel)
// TODO: feat: Create Reservation
// TODO: feat: CalendarView with operations (services)

// TODO: Main Layout
import 'package:flutter/material.dart';

class AgencyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agency Name')),
      body: AgencyViewBody(),
      bottomNavigationBar: AgencyBottomNavigationBar(),
    );
  }
}

class AgencyViewBody extends StatelessWidget {
  const AgencyViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Today',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 32,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Text('08:00'),
                title: Text('Pacific Coast Dive Center'),
                trailing: Icon(Icons.info_outline),
              ),
              ListTile(
                leading: Text('08:00'),
                title: Text('Pacific Coast Dive Center'),
                trailing: Icon(Icons.info_outline),
              ),
              ListTile(
                leading: Text('08:00'),
                title: Text('Pacific Coast Dive Center'),
                trailing: Icon(Icons.info_outline),
              ),
              ListTile(
                leading: Text('08:00'),
                title: Text('Pacific Coast Dive Center'),
                trailing: Icon(Icons.info_outline),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class AgencyBottomNavigationBar extends StatelessWidget {
  const AgencyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save_alt),
          label: 'Reservations',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Operators',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
