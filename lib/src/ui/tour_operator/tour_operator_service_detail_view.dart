import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_bloc.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_state.dart';
import 'package:yeet/yeet.dart';

class ServiceDetailsView extends HookWidget {
  final String id;

  ServiceDetailsView({required this.id});

  @override
  Widget build(BuildContext context) {
    final tourOperatorState = useProvider(tourOperatorBlocProvider.state);
    final service = (tourOperatorState as Data)
        .services
        .firstWhere((element) => element.id == id);

    return GestureDetector(
      onTap: context.yeet,
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: GestureDetector(
            onTap: () {},
            child: Hero(
              tag: 'service $id',
              child: Card(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        service.name,
                        style: TextStyle(
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        service.id!,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue.shade200),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
