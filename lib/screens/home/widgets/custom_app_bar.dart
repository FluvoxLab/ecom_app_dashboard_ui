import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.filter_outline),
        ),
        OutlinedButton(
          style: ButtonStyle(
            side: const MaterialStatePropertyAll(
              BorderSide(
                color: ColorPalette.white,
                width: 0.7,
              ),
            ),
            foregroundColor: const MaterialStatePropertyAll(
              ColorPalette.white,
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.only(left: 17.0, right: 7.0, top: 4.0, bottom: 4.0),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
            ),
          ),
          onPressed: () {},
          child: const Row(
            children: [
              Text(
                'David',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                  'https://thispersondoesnotexist.com/',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
