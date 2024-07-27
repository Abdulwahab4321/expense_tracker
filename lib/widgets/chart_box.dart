import 'package:flutter/material.dart';

class ChartBox extends StatelessWidget {
  const ChartBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: 4,
         ),
          child: FractionallySizedBox(
           heightFactor: 1.0,
            child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8),
              ),
            color: Theme.of(context).colorScheme.primary.withOpacity(0.35)
          ),

        ),
      ),
    ));
  }
}
