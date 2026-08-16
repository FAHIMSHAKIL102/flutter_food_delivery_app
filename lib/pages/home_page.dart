import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_current_location.dart';
import 'package:flutter_food_delivery_app/components/my_description_box.dart';
import 'package:flutter_food_delivery_app/components/my_drawer.dart';
import 'package:flutter_food_delivery_app/components/my_silver_app_bar.dart';
import 'package:flutter_food_delivery_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: .end,
              crossAxisAlignment: .start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                MyCurrentLocation(),
                // description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [Text('Hello'), Text('Hello'), Text('Hello')],
        ),
      ),
    );
  }
}
