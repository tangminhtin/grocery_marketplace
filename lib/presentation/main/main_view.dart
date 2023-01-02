import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/main/browse/browse.dart';
import 'package:grocery_marketplace/presentation/main/home/home.dart';
import 'package:grocery_marketplace/presentation/main/order_history/order_history.dart';
import 'package:grocery_marketplace/presentation/main/profile/profile.dart';
import 'package:grocery_marketplace/presentation/main/store/store.dart';
import 'package:grocery_marketplace/presentation/resources/color_manager.dart';
import 'package:grocery_marketplace/presentation/resources/string_manager.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _index = 0;

  final List<Widget> _pages = const [
    HomeView(),
    BrowseView(),
    StoreView(),
    OrderHistoryView(),
    ProfileView()
  ];

  void _pageChanged(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.ghostWhite,
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: StringManager.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: StringManager.browse,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: StringManager.store,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: StringManager.orderHistory,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: StringManager.profile,
          ),
        ],
        selectedItemColor: ColorManager.illuminatingEmerald,
        // unselectedItemColor: ColorManager.darkLiver,
        showUnselectedLabels: true,
        unselectedIconTheme:
            IconThemeData(color: ColorManager.darkLiverOpacity40),
        unselectedLabelStyle: TextStyle(color: ColorManager.darkLiver),
        unselectedItemColor: ColorManager.darkLiver,
        currentIndex: _index,
        onTap: (index) => _pageChanged(index),
      ),
    );
  }
}
