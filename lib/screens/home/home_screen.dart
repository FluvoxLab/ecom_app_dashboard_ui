import 'package:ecom_app_dashboard_ui/screens/home/widgets/custom_app_bar.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/header_card.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/latest_activities_list.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/orders_summary.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/store_overview_card.dart';
import 'package:ecom_app_dashboard_ui/screens/home/widgets/stores_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              CustomAppBar(),
              HeaderCard(),
              StoresList(),
              StoreOverViewCard(),
              OrdersSummary(),
              LatestActivitiesList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
