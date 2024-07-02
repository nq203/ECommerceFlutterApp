import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index)=>controller.selectIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Icons.heart_broken), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body:Obx(()=>controller.screens[controller.selectIndex.value]) ,
    );
  }
}
class NavigationMenuController extends GetxController{
    final Rx<int> selectIndex = 0.obs;
    static NavigationMenuController get instance => Get.find();
    final screens = [
      Container(color: Colors.red,),
      Container(color: Colors.green,),
      Container(color: Colors.blue),
      Container(color: Colors.yellow,),
    ];
}
