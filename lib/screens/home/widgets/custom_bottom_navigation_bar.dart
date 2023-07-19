import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.home_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.calendar_clear_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.bar_chart_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.cube_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.person),
            ),
          ],
        ),
      ),
    );
  }
}
