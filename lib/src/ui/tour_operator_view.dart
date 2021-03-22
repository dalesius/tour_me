// TODO: feat: Add service
// TODO: feat: CalendarView with operations (services)
// TODO: feat: Reservation Requests (accept, decline, manual, auto)
// TODO: feat: Agency request (accept, decline, manual)
import 'package:flutter/material.dart';

class TourOperatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agency Name')),
      body: TourOperatorServicesTab(),
      bottomNavigationBar: TourOperatorBottomNavigationBar(),
    );
  }
}

class TourOperatorServicesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TourOperatorBottomNavigationBar extends StatelessWidget {
  const TourOperatorBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.room_service),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download_rounded),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
