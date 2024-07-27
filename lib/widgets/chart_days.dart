import 'package:expense_tracker/widgets/chart_box.dart';
import 'package:flutter/material.dart';


class ChartBar extends StatelessWidget {
   ChartBar({super.key});
 var weekdays = [
   'Mon',
   'tue',
   'wed',
   'thu',
   'fri',
   'sat',
   'sun'
 ];
  @override
  Widget build(BuildContext context) {
    var colourtheme = Theme.of(context).colorScheme;
    return Container(
      margin:const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            colourtheme.primary.withOpacity(0.3),
            colourtheme.primary.withOpacity(0.0)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter
        )
      ),
      child: Column(
        children: [
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  for(int i = 1; i<=7; i++) const ChartBox()

            ],
           ),
          ),
          const SizedBox(height: 12,),
          Row(
            children: [
              for(int i = 0; i<=6; i++)
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Center(
                      child: Text(weekdays[i],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colourtheme.primary.withOpacity(0.7)
                        ),
                      ),
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
