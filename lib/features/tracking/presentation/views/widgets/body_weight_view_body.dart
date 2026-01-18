import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BodyWeightViewBody extends StatelessWidget {
  const BodyWeightViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          widget: Text(
            'Body weight',
            style: Styles.mediumTextStyle18.copyWith(color: Color(0xffA1A1AA)),
          ),
        ),
        Row(children: [SelectedDate()]),
      ],
    );
  }
}

class SelectedDate extends StatefulWidget {
  const SelectedDate({super.key});

  @override
  State<SelectedDate> createState() => _SelectedDateState();
}

class _SelectedDateState extends State<SelectedDate> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.red,
      value: dropdownValue,
      style: TextStyle(color: Colors.red),
      icon: Icon(Icons.arrow_drop_down),
      items: [
        DropdownMenuItem(value: 'one', child: Text('one')),
        DropdownMenuItem(value: 'tow', child: Text('tow')),
      ],
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
