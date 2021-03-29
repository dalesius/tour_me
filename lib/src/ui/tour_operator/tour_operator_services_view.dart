// TODO: feat: Add service
// TODO: feat: CalendarView with operations (services)
// TODO: feat: Reservation Requests (accept, decline, manual, auto)
// TODO: feat: Agency request (accept, decline, manual)
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/auth/auth_bloc.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_bloc.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';

class TourOperatorServicesView extends HookWidget {
  final authState = useProvider(authBlocProvider.state);
  final tourOperatorBloc = useProvider(tourOperatorBlocProvider);

  @override
  Widget build(BuildContext context) {
    tourOperatorBloc.getAllServicesByOperator(
        email: authState.maybeWhen(
            authenticated: (user) => user.userId, orElse: () => 'null'));
    return Scaffold(
      appBar: AppBar(
        title: authState.maybeWhen(
          authenticated: (user) => Text(user.userId),
          loading: () => CircularProgressIndicator(),
          orElse: () => Text('not valid'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              tourOperatorBloc.logoutButtonPressed();
            },
          )
        ],
      ),
      body: TourOperatorServicesTab(),
      bottomNavigationBar: TourOperatorBottomNavigationBar(),
    );
  }
}

class TourOperatorServicesTab extends HookWidget {
  final tourOperatorState = useProvider(tourOperatorBlocProvider.state);
  final tourOperatorBloc = useProvider(tourOperatorBlocProvider);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: tourOperatorState.when(
          (services) => SingleChildScrollView(
              child: Column(
            children: services
                .map((service) => TourOperatorServiceCard(service: service))
                .toList(),
          )),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class TourOperatorServiceCard extends StatelessWidget {
  final TourOperatorService service;
  TourOperatorServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(service.id.toString()),
        title: Text(service.name),
      ),
    );
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
