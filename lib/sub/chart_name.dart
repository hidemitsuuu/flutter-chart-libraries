import 'package:flutter/material.dart';

class ChartName extends StatelessWidget {
  const ChartName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 96.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () => {},
            child: Text(
              'fl_chart',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: TextButton(
              onPressed: () => {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(8.0)),
              ),
              child: Text(
                'barChart',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
