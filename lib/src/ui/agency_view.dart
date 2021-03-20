import 'package:flutter/material.dart';
import 'package:tour_me/src/blocs/agency_view_bloc.dart';
import 'package:tour_me/src/models/tour_operator_model.dart';

// TODO: feat: Add operator
// TODO: feat: Reservations (list, cancel)
// TODO: feat: Create Reservation
// TODO: feat: CalendarView with operations (services)
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

class AgencyViewBody extends StatefulWidget {
  @override
  _AgencyViewBodyState createState() => _AgencyViewBodyState();
}

class _AgencyViewBodyState extends State<AgencyViewBody> {
  @override
  void initState() {
    super.initState();
    agencyViewBloc.fetchTourOperators();
  }

  @override
  void dispose() {
    super.dispose();
    agencyViewBloc.dispose();
  }

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
            child: StreamBuilder(
          stream: agencyViewBloc.allTourOperators,
          builder: (context, AsyncSnapshot<List<TourOperator>> snapshot) {
            if (snapshot.hasData) {
              return TourOperatorsList(tourOperators: snapshot.data!);
            } else if (snapshot.hasError) {
              Text(
                'An error has ocurred while fetching data',
                style: TextStyle(backgroundColor: Colors.red.shade600),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ))
      ],
    );
  }
}

class TourOperatorsList extends StatelessWidget {
  TourOperatorsList({required this.tourOperators});
  final List<TourOperator> tourOperators;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: tourOperators
            .map(
              (tourOperator) => ListTile(
                leading: Text('ID: ${tourOperator.id}'),
                title: Text(tourOperator.name),
                trailing: Icon(Icons.info_outline),
              ),
            )
            .toList());
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
