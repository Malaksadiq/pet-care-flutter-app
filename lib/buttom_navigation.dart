import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/app_styles.dart';
import 'package:flutter_luckypet_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class ButtomNavigationbar extends StatefulWidget {
  const ButtomNavigationbar({super.key});

  @override
  State<ButtomNavigationbar> createState() => _ButtomNavigationbarState();
}

class _ButtomNavigationbarState extends State<ButtomNavigationbar> {
  int selectindex = 0;
  onitemtapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: selectindex == 0
              ? SvgPicture.asset('assets/images/home_selected.svg')
              : SvgPicture.asset('assets/images/home_unselected.svg'),
              label: 'Home' 
              
              ),
              BottomNavigationBarItem(
          icon: selectindex == 1
              ? SvgPicture.asset('assets/images/cart_selected.svg')
              : SvgPicture.asset('assets/images/cart_unselected.svg'),
              label: 'Cart' 
              
              ),
              BottomNavigationBarItem(
          icon: selectindex == 2
              ? SvgPicture.asset('assets/images/profile_selected.svg')
              : SvgPicture.asset('assets/images/profile_unselected.svg'),
              label: 'profile' 
              
              ),
    ]);
  }
}
