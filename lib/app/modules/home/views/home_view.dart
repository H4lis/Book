import 'package:book/app/modules/SideMenu/views/side_menu_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bab/bab_1.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  final ProfileController controllerhome = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SideMenuView(),
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.amber,
        ),
        body: StreamBuilder(
          stream: controllerhome.streamUser(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                Bab_1(),
                const SizedBox(
                  height: 200,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
