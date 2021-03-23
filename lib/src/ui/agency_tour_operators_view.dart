import 'package:flutter/material.dart';
import 'package:tour_me/src/blocs/agency_bloc.dart';
import 'package:tour_me/src/models/tour_operator_model.dart';

//TODO: Implement navigation

class AgencyTourOperatorsTab extends StatefulWidget {
  @override
  _AgencyTourOperatorsTabState createState() => _AgencyTourOperatorsTabState();
}

class _AgencyTourOperatorsTabState extends State<AgencyTourOperatorsTab> {
  @override
  void initState() {
    super.initState();
    agencyViewBloc.fetchTourOperatorsByAgency(id: 2);
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
            'My Tour Operators',
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
                trailing: IconButton(
                    icon: Icon(Icons.info_outline),
                    onPressed: () =>
                        print('Navigate to operator "${tourOperator.name}"')),
              ),
            )
            .toList());
  }
}
