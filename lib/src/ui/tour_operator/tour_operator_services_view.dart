// TODO: feat: CalendarView with operations (services)
// TODO: feat: Reservation Requests (accept, decline, manual, auto)
// TODO: feat: Agency request (accept, decline, manual)
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/auth/auth_bloc.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_bloc.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';
import 'package:yeet/yeet.dart';

class TourOperatorServicesView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authState = useProvider(authBlocProvider.state);
    final tourOperatorBloc = useProvider(tourOperatorBlocProvider);
    return Scaffold(
      appBar: AppBar(
        title: authState.maybeWhen(
          authenticated: (user) => Text(user.id.split('@').first),
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
  @override
  Widget build(BuildContext context) {
    final tourOperatorState = useProvider(tourOperatorBlocProvider.state);
    final tourOperatorBloc = useProvider(tourOperatorBlocProvider);
    final textFieldController = useTextEditingController();
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
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
          SizedBox(height: 10),
          Center(
            child: tourOperatorState.when(
              data: (services) => Column(
                children: [
                  Column(
                    children: services
                        .map((service) =>
                            TourOperatorServiceCard(service: service))
                        .toList(),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: textFieldController,
                              decoration: InputDecoration(
                                  hintText: 'Add new service...',
                                  contentPadding: EdgeInsets.all(5),
                                  labelText: 'Service name'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              color: Colors.blue,
                              icon: Icon(Icons.add),
                              onPressed: () {
                                tourOperatorBloc.addServiceButtonPressed(
                                    textFieldController.text);
                                textFieldController.clear();
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              loading: () => CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

class TourOperatorServiceCard extends HookWidget {
  final TourOperatorService service;
  TourOperatorServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    final tourOperatorBloc = useProvider(tourOperatorBlocProvider);
    return GestureDetector(
      onTap: () => context.yeet('/services/${service.id}'),
      child: Hero(
        tag: 'service ${service.id}',
        child: Card(
          child: ListTile(
            title: Text(
              service.name,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
                onPressed: () =>
                    tourOperatorBloc.removeServiceButtonPressed(service)),
          ),
        ),
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
