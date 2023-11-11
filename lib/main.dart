import 'package:flutter/material.dart';
import 'menu/pertama.dart';
import 'menu/kedua.dart';
import 'menu/ketiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.document_scanner),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.notifications_none),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: PertamaPage()),
            Center(child: KeduaPage()),
            Center(child: KetigaPage()),
          ],
        ),
      ),
    );
  }
}
