import 'package:flutter/material.dart';
// import 'package:prakper5/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  static const List<Widget> _pages = [
    Icon(
      Icons.home,
      size: 100,
    ),
    Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    Icon(
      Icons.call,
      size: 100,
    ),
    Icon(
      Icons.camera,
      size: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              accountName: Text("Dio Dharmaesa, S.Kom, M.Cs"),
              accountEmail: Text('mobile@gmail.com'),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 55, 157, 50)),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Text('Account'),
              onTap: () {
                Navigator.pushNamed(context, '/akun');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/akun');
            },
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          )
        ],
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     size: 30,
        //   ),
        //   onPressed: () {},
        // ),
      ),
      body: Center(
        child: _pages.elementAt(_index),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Pindah Screen'),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) {
      //       //       return const Settings();
      //       //     },
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/settings');
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 10, 87, 21),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Telpon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Camera",
          ),
        ],
      ),
    );
  }
}
