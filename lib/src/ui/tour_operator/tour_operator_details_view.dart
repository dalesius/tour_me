import 'package:flutter/material.dart';

import '../../models/tour_operator/tour_operator_model.dart';
import '../../models/service/tour_operator_service_model.dart';

class TourOperatorDetailsView extends StatefulWidget {
  TourOperatorDetailsView();

  @override
  _TourOperatorDetailsViewState createState() =>
      _TourOperatorDetailsViewState();
}

class _TourOperatorDetailsViewState extends State<TourOperatorDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          builder: (context, AsyncSnapshot<TourOperator> snapshot) {
            if (snapshot.hasData) {
              return TourOperatorDetails(
                tourOperator: snapshot.data!,
              );
            } else if (snapshot.hasError) {
              return Text(
                'An error has ocurred while fetching data',
                style: TextStyle(backgroundColor: Colors.red.shade600),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class TourOperatorDetails extends StatefulWidget {
  final TourOperator tourOperator;
  TourOperatorDetails({required this.tourOperator});

  @override
  _TourOperatorDetailsState createState() => _TourOperatorDetailsState();
}

class _TourOperatorDetailsState extends State<TourOperatorDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          minRadius: 50,
          backgroundColor: Colors.blue.shade400,
          child: Text('ID: ${widget.tourOperator.id}'),
        ),
        Text(
          widget.tourOperator.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        StreamBuilder(
          builder:
              (context, AsyncSnapshot<List<TourOperatorService>> snapshot) {
            if (snapshot.hasData) {
              return TourOperatorServicesList(servicesList: snapshot.data!);
            } else if (snapshot.hasError) {
              return Text(
                'An error has ocurred while fetching data',
                style: TextStyle(backgroundColor: Colors.red.shade600),
              );
            }
            return CircularProgressIndicator();
          },
        )
      ],
    );
  }
}

class TourOperatorServicesList extends StatelessWidget {
  final List<TourOperatorService> servicesList;
  TourOperatorServicesList({required this.servicesList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: servicesList
            .map((service) => ListTile(
                  leading: Text('ID: ${service.id}'),
                  title: Text('${service.name}'),
                ))
            .toList(),
      ),
    );
  }
}
