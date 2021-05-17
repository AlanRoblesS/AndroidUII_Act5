import 'package:flutter/material.dart';
import 'package:robles/tabs/primero.dart';
import 'package:robles/tabs/segundo.dart';
import 'package:robles/tabs/tercero.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Usando Tabs",
      debugShowCheckedModeBanner: false,
      // Home
      home: Inicio()));
} //Fin de main

class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
} //Fin de clase inicio

class InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  } //Fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //Fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Usando la Barra de Navegacion Inferior"),
        // Set the background color of the App Bar
        backgroundColor: Colors.black87,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.black87,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.drive_eta),
            ),
            Tab(
              icon: Icon(Icons.add_circle),
            ),
            Tab(
              icon: Icon(Icons.account_circle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ), //Fin de bottomnavigatorbar
    ); //Fin de scaffold
  } //Fin de widget

} //Fin de iniciostate
