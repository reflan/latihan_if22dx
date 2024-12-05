import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';
import 'package:myapp/app/modules/mahasiswa/views/mahasiswa_add_view.dart';

import '../../mahasiswa/views/mahasiswa_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final cAuth = Get.lazyPut(() => AuthController());
  @override
  Widget build(BuildContext context) {
    return DashboardAdmin();
  }
}

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  final cAuth = Get.find<AuthController>();
  int _index = 0;
  List<Map> _fragment = [
    {
      'title': 'Dashboard',
      'view': MahasiswaView(),
      'add': () => MahasiswaAddView(),
    },
    {
      'title': 'Data Mahasiswa',
      'view': MahasiswaView(),
      'add': () => MahasiswaAddView(),
    },
    {
      'title': 'Data Dosen',
      'view': MahasiswaView(),
      'add': () => MahasiswaAddView(),
    },
    {
      'title': 'Data Pegawai',
      'view': MahasiswaView(),
      'add': () => MahasiswaAddView(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        titleSpacing: 0,
        title: Text(
          _fragment[_index]['title'],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(_fragment[_index]['add']),
            icon: Icon(Icons.add_circle_outline),
          )
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: _fragment[_index]['view'],
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.white,
                ),
                Text(
                  "Reflan Nuari",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 0);
              Get.back();
            },
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 1);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Mahasiswa'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 2);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Dosen'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 3);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Pegawai'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
          ListTile(
            onTap: () {
              Get.back();
              cAuth.logout();
            },
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Colors.red,
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
