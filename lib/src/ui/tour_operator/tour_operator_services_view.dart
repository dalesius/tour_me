// TODO: feat: Add service
// TODO: feat: CalendarView with operations (services)
// TODO: feat: Reservation Requests (accept, decline, manual, auto)
// TODO: feat: Agency request (accept, decline, manual)
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/auth/auth_bloc.dart';
import 'package:tour_me/src/blocs/auth/auth_state.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_bloc.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';

class TourOperatorServicesView extends HookWidget {
  final authState = useProvider(authBlocProvider.state);
  final tourOperatorBloc = useProvider(tourOperatorBlocProvider);
  //useeffect???

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      tourOperatorBloc.getAllServicesByOperator(
          email: (authState as Authenticated).user.userId);
    }, []);

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // return AddServiceDialog();
        },
        child: Icon(Icons.add),
      ),
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
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'My services',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: tourOperatorState.when(
              data: (services, _) => SingleChildScrollView(
                child: Column(
                  children: services
                      .map((service) =>
                          TourOperatorServiceCard(service: service))
                      .toList(),
                ),
              ),
              loading: () => CircularProgressIndicator(),
            ),
          ),
        ],
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

// class AddServiceDialog extends HookWidget {
//   final tourOperatorBloc = useProvider(tourOperatorBlocProvider);
//   final textFieldController = TextEditingController();
//   @override
//   Widget build(BuildContext context) async {
//     return await showDialog<Dialog>(
//       context: context,
//       builder: (_) => Dialog(
//         child: Column(
//           children: [
//             TextField(
//               controller: textFieldController,
//               decoration: InputDecoration(
//                 hintText: 'Service name',
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () => tourOperatorBloc
//                   .addServiceButtonPressed(textFieldController.text),
//               child: Text('Add Service'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
