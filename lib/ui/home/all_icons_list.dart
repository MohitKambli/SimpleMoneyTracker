import 'package:flutter/material.dart';
import 'package:simplemoneytracker/ui/home/buttons/square_button.dart';
import 'package:simplemoneytracker/ui/shared/IconsHelper.dart';

class AllIconsList extends StatelessWidget {
  const AllIconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowIndicator();

        return true;
      },
      child: GridView.builder(
        itemCount: IconsHelper.iconKeyList.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SquareButton(imageKey: IconsHelper.iconKeyList[index], color: Colors.deepOrange);
        },
      )
    );
  }
}