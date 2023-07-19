import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';

class OrdersSummary extends StatelessWidget {
  const OrdersSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        const Text(
          'Orders Summary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 50.0),
        SizedBox(
          height: 80.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              OrderSummaryCard(
                isHighlited: false,
                label: 'Total',
                value: '115',
              ),
              OrderSummaryCard(
                isHighlited: true,
                label: 'pending',
                value: '12',
              ),
              OrderSummaryCard(
                isHighlited: false,
                label: 'confirmed',
                value: '20',
              ),
              OrderSummaryCard(
                isHighlited: true,
                label: 'canceld',
                value: '2',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    super.key,
    required this.isHighlited,
    required this.label,
    required this.value,
  });

  final bool isHighlited;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.8,
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: isHighlited ? ColorPalette.onyxGrey : ColorPalette.white,
            boxShadow: const [
              BoxShadow(blurRadius: 7, color: ColorPalette.nightBlack)
            ]),
        child: Transform.rotate(
          angle: -0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                  color: isHighlited
                      ? ColorPalette.white
                      : ColorPalette.nightBlack,
                ),
              ),
              const SizedBox(height: 7.0),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color:
                      isHighlited ? ColorPalette.white : ColorPalette.onyxGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
