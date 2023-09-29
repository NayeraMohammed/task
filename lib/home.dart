import 'package:flutter/material.dart';
import 'package:task/tabs/screenOne.dart';
import 'package:task/tabs/screenThree.dart';
import 'package:task/tabs/screenTwo.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TabBar(
              tabs: [
                Tab(
                  text: "Screen 1", /*icon: Icon(Icons.add)*/
                ),
                Tab(
                  text: "Screen 2", /*icon: Icon(Icons.delete)*/
                ),
                Tab(
                  text: "Screen 3", /*icon: Icon(Icons.search)*/
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ]),
          )
        ]),
      ),
    );
  }
}
