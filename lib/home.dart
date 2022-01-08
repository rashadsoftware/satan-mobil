import 'package:flutter/material.dart';

import 'page/add.dart';
import 'page/dashboard.dart';
import 'page/favorite.dart';
import 'page/message.dart';
import 'page/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Favorite(),
    const Message(),
    const Profile()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Satan.az"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 19),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            currentScreen = const Add();
            currentTab = 5;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Favorite();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Favorite",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Message();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.message,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Messages",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Profile();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 4 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color:
                                  currentTab == 4 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
