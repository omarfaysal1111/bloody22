import 'package:flutter/material.dart';

class InstructionsListView2 extends StatelessWidget {
  const InstructionsListView2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        Text('At least, you must be 18 years old and weigh 50 kg'),
        SizedBox(
          height: 15,
        ),
        Text('You must get enough hours of sleep before donating blood.'),
        SizedBox(
          height: 15,
        ),
        Text('Do not take aspirin before donating blood for a whole day.'),
        SizedBox(
          height: 15,
        ),
        Text(
            'Eat balanced meals containing a large amount of nutrients and avoid fatty foods before donating blood.'),
        SizedBox(
          height: 15,
        ),
        Text(
            'Drink a large amount of fluids one day before donating blood, as well as after donating.'),
      ],
    );
  }
}
