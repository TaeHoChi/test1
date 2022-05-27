import 'package:firebase_test/bottom_navigation/animal_list/animal_categori.dart';
import 'package:firebase_test/bottom_navigation/home.dart';
import 'package:firebase_test/bottom_navigation/id_infomation.dart';
import 'package:firebase_test/bottom_navigation/message/tab.dart';
import 'package:flutter/material.dart';

class mainNavigation extends StatefulWidget {
  const mainNavigation({Key? key}) : super(key: key);

  @override
  _mainNavigationState createState() => _mainNavigationState();
}

class _mainNavigationState extends State<mainNavigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 8,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            '반려동물 위키',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            homePage(),
            AnimalCategoriWidget(),
            MyTabbedPage(),
            idinformation(),
          ],
        ),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            color: Colors.blue,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.white,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 0.0),
              ),
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 12.0),
              tabs: const <Widget>[
                Tab(
                  text: ('홈'),
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  ),
                ),
                Tab(
                  text: ('목록'),
                  icon: Icon(Icons.list, size: 35),
                ),
                Tab(
                  text: ('메신저'),
                  icon: Icon(Icons.message, size: 35),
                ),
                Tab(
                  text: ('내정보'),
                  icon: Icon(Icons.person, size: 35),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
