import 'package:flutter/material.dart';
import 'constants.dart';
import 'enum.dart';
import 'screens/home_page_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Colors.white;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home,
                  color: MenuState.home == selectedMenu
                      ? kDrawerIconColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomePageScreen(),
                        ),
                      );
                },
              ),
              IconButton(
               icon: Icon(Icons.add_comment,
                color: MenuState.profile == selectedMenu
                      ? kDrawerIconColor
                      : inActiveIconColor,
                      ),
                onPressed: () {},
              ),
              IconButton(
               // icon: SvgPicture.asset("assets/icons/f.svg"),
               icon: Icon(Icons.file_download,
                color: MenuState.profile == selectedMenu
                      ? kDrawerIconColor
                      : inActiveIconColor,
                      ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person,
                  color: MenuState.profile == selectedMenu
                      ? kDrawerIconColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}