import 'package:flutter/material.dart';

class AppbarAsesinos extends StatelessWidget implements PreferredSizeWidget{
final String nombre_appbar;
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
AppbarAsesinos({required this.nombre_appbar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Colors.black,
              title: Text(
                this.nombre_appbar,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'VT323',
                ),
              ),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white)
            );
  }
}