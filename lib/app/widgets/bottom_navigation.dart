import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:book/app/modules/wrapper_screen/controllers/wrapper_screen_controller.dart';

class BottomNavigation extends StatelessWidget {
  final Function(int index) onTap;

  BottomNavigation({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final List<String> itemBar = [
    'Book',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, -2))
        ],
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          itemBar.length,
          (i) => GestureDetector(
            onTap: () {
              onTap(i);
            },
            child: GetBuilder<WrapperScreenController>(
              builder: (controller) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              i == controller.selectedIndex.value
                                  ? 'assets/icons/${itemBar[i]}_on.png'
                                  : 'assets/icons/${itemBar[i]}.png', // Remove extra '}'
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
