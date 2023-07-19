import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              const Column(
                children: [
                  Text(
                    'Hi David',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Welcom back!',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    splashRadius: 22.0,
                    onPressed: () {},
                    icon: const Icon(Ionicons.search_outline),
                  ),
                  const SizedBox(width: 10.0),
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: OutlinedButton(
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
                          padding:
                              const MaterialStatePropertyAll(EdgeInsets.zero),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          )),
                      onPressed: () {},
                      child: const Icon(
                        Ionicons.options_outline,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Row(
            children: [
              Text(
                'Your Balance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                '\$17.354.00',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: ColorPalette.busGreen),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
