import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';

class StoresList extends StatelessWidget {
  const StoresList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(width: 10.0),
        itemBuilder: (context, index) => ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: const MaterialStatePropertyAll(ColorPalette.white),
            backgroundColor: MaterialStatePropertyAll(
                index == 0 ? ColorPalette.busGreen : ColorPalette.onyxGrey),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
            ),
          ),
          child: Text(
            'Store $index',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: index == 0 ? ColorPalette.nightBlack : ColorPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
