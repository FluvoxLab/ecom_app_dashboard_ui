import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class StoreOverViewCard extends StatelessWidget {
  const StoreOverViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Stack(
        children: [
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            children: const [
              InfoCard(
                isHighlited: false,
                icon: Ionicons.calculator,
                label: 'Sales',
                value: '20K',
              ),
              InfoCard(
                isHighlited: true,
                icon: Ionicons.cube,
                label: 'Products',
                value: '1115',
              ),
               InfoCard(
                isHighlited: true,
                icon: Ionicons.person_circle,
                label: 'Customers',
                value: '221',
              ),
              InfoCard(
                isHighlited: false,
                icon: Ionicons.card_outline,
                label: 'Revenue',
                value: '17.80 K',
              ),
             
            ],
          ),
          Transform.translate(
            offset: const Offset(130, 180),
            child: Transform.rotate(
              angle: 120,
              child: Container(
                color: ColorPalette.white,
                height: 26,
                width: 120,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(130, 192),
            child: Transform.rotate(
              angle: -120,
              child: Container(
                color: ColorPalette.busGreen,
                height: 26,
                width: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.isHighlited,
    required this.icon,
    required this.label,
    required this.value,
  });

  final bool isHighlited;
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isHighlited ? ColorPalette.busGreen : ColorPalette.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(40.0),
      margin: const EdgeInsets.all(7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: ColorPalette.onyxGrey,
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: ColorPalette.nightBlack,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: ColorPalette.nightBlack,
            ),
          ),
        ],
      ),
    );
  }
}
