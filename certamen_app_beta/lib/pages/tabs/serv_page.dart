import 'package:certamen_app_beta/pages/tabs/doctor_page.dart';
import 'package:certamen_app_beta/pages/tabs/limpiadores_page.dart';
import 'package:certamen_app_beta/pages/tabs/sastre_page.dart';
import 'package:certamen_app_beta/pages/tabs/sommelier_page.dart';
import 'package:certamen_app_beta/widgets/appbar_asesinos.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServPage extends StatelessWidget {
  const ServPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_seccion = TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        fontFamily: 'VT323',
        color: Colors.white);
    TextStyle estilo_dato =
        TextStyle(fontSize: 17, fontFamily: 'VT323', color: Colors.white);

    return Scaffold(
      backgroundColor: Colors.black,
      //APPBAR
      appBar: AppbarAsesinos(nombre_appbar: 'Lista de Servicios'),
      //LISTA DE SERVICIOS
      body: Padding(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Divider(color: Colors.white, thickness: 5),
            ListTile(
              title: Text('Sommelier', style: estilo_seccion),
              subtitle:
                  Text('Proporciona armas y munición', style: estilo_dato),
              leading: Icon(MdiIcons.pistol, color: Colors.blue, size: 40),
              trailing:
                  Icon(MdiIcons.arrowRight, size: 20, color: Colors.green),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SommelierPage()));
              },
            ),
            Divider(color: Colors.white, thickness: 5),
            ListTile(
              title: Text('Doctor', style: estilo_seccion),
              subtitle: Text('Servicio médico de urgencia', style: estilo_dato),
              leading: Icon(MdiIcons.heart, color: Colors.red, size: 40),
              trailing:
                  Icon(MdiIcons.arrowRight, size: 20, color: Colors.green),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DoctorPage()));
              },
            ),
            Divider(color: Colors.white, thickness: 5),
            ListTile(
              title: Text('Sastre', style: estilo_seccion),
              subtitle: Text('Proporciona trajes con resistencia a balas',
                  style: estilo_dato),
              leading: Icon(MdiIcons.hanger, color: Colors.grey, size: 40),
              trailing:
                  Icon(MdiIcons.arrowRight, size: 20, color: Colors.green),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SastrePage()));
              },
            ),
            Divider(color: Colors.white, thickness: 5),
            ListTile(
              title: Text('Limpiadores', style: estilo_seccion),
              subtitle: Text(
                  'Aseo al lugar de asesinato y gestion de cadaveres',
                  style: estilo_dato),
              leading: Icon(MdiIcons.broom, color: Colors.brown, size: 40),
              trailing:
                  Icon(MdiIcons.arrowRight, size: 20, color: Colors.green),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LimpiadoresPage()));
              },
            ),
            Divider(color: Colors.white, thickness: 5),
          ],
        ),
      ),
    );
  }
}
