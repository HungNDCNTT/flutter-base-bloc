import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';

/// tabController = TabController(length: 2, vsync: this)
/// Page with TickerProviderStateMixin

class AppTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<String> tabItems;

  AppTabBar({this.tabController, this.tabItems = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: TabBar(
        controller: tabController,
        tabs: buildTabItems(),
        labelStyle: AppTextStyle.blackS14,
        unselectedLabelStyle: AppTextStyle.whiteS14,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.background,
        indicator: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: AppShadow.boxShadow,
        ),
        indicatorWeight: 0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19)),
        boxShadow: AppShadow.boxShadow,
      ),
    );
  }

  List<Widget> buildTabItems() {
    List<Widget> items = [];
    for (int i = 0; i < (tabItems ?? []).length; i++) {
      items.add(buildTabItem(tabItems[i], i));
    }
    return items;
  }

  Widget buildTabItem(String title, int index) {
    return Text(
      title,
    );
  }
}
