import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_current_location.dart';
import 'package:flutter_food_delivery_app/components/my_description_box.dart';
import 'package:flutter_food_delivery_app/components/my_drawer.dart';
import 'package:flutter_food_delivery_app/components/my_silver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScolled) => [
          MySilverAppBar(
            title: Text('hello'),
            child: Column(
              mainAxisAlignment: .end,
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
        body: Container(color: Colors.blue),
      ),
    );
  }
}
