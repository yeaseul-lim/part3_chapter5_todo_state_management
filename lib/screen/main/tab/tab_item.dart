import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/calendar/f_calendar.dart';
import 'package:fast_app_base/screen/main/tab/todo/f_todo.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/myPage/f_myPage.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, 'Home', HomeFragment()),
  todo(Icons.check_box, 'Todo', TodoFragment()),
  calendar(Icons.calendar_month, 'Calendar', CalendarFragment()),
  myPage(Icons.person, 'My Page', MyPageFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
