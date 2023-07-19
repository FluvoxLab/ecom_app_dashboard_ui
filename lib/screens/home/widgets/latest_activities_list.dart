import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LatestActivitiesList extends StatelessWidget {
  const LatestActivitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Activites',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text('view all'),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorPalette.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            padding: const EdgeInsets.all(15.0),
            child: ListView.separated(
              itemCount: 7,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const Divider(
                color: ColorPalette.onyxGrey,
              ),
              itemBuilder: (context, index) => const ActivityCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorPalette.nightBlack,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '12/4/2023 - 14:56',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorPalette.onyxGrey,
                fontSize: 12.0,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Ionicons.globe_outline,
                  color: ColorPalette.onyxGrey,
                  size: 12.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  'california, usa , 2658',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: ColorPalette.nightBlack,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ],
        ),
     
        Text(
          '\$176.67',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: ColorPalette.nightBlack,
          ),
        ),
      ],
    );
  }
}
