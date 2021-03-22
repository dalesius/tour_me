import 'package:flutter/material.dart';

import 'agency_tour_operators_view.dart';

// TODO: feat: Add operator
// TODO: feat: Reservations (list, cancel)
// TODO: feat: Create Reservation
// TODO: feat: CalendarView with operations (services)
class AgencyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agency Name')),
      body: AgencyTourOperatorsTab(),
      bottomNavigationBar: AgencyBottomNavigationBar(),
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
      currentIndex: 2,
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
