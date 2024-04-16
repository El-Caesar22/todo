import 'package:flutter/material.dart';
import 'package:to_do/UI/Screens/Bottom%20Sheet/Add_BotoomSheet/add_bottomSheet.dart';
import 'package:to_do/UI/Screens/Home/Tabs/settings_tab.dart';
import 'package:to_do/UI/Utils/app_color.dart';
import 'package:to_do/UI/Utils/app_theme.dart';

import 'Tabs/list_tab.dart';

class Home extends StatefulWidget {

  static String routename = "Home" ;
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabIndex = 0;
  List<Widget> Tabs = [
    ListTab(),
    SettingsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List" , style: AppTheme.lightAppBarTextStyle,),
        backgroundColor: AppColors.appBarColor,
      ),
      body: Tabs[currentTabIndex],
      floatingActionButton: buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() =>BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 12,
    clipBehavior: Clip.hardEdge,
    child: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (newTabIndex){
          currentTabIndex = newTabIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list) , label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded) , label: "Settings"),
        ],
      ),
  );

  buildFab() =>
      FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return AddBottomSheet();
          });
        } ,
        child: Icon(Icons.add , color: AppColors.White,),
        shape: StadiumBorder(side: BorderSide(width: 3 , color: AppColors.White)),
      );
}
