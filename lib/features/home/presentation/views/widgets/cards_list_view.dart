import 'package:fitness_app/features/home/presentation/views/widgets/welcom_card.dart';
import 'package:flutter/material.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (index, context) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: WelcomCard(),
          );
        },
      ),
    );
  }
}
