import 'package:certamen_app_beta/widgets/appbar_asesinos.dart';
import 'package:certamen_app_beta/widgets/servicio_info.dart';
import 'package:flutter/material.dart';

class SommelierPage extends StatelessWidget {
  const SommelierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppbarAsesinos(nombre_appbar: 'Servicio'),
      body: Container(
        child: Column(
          children: [
            ServicioDetalle(
                nombre_servicio: 'Sommelier',
                nombre: 'Desconocido',
                foto: 'sommelier.jpg',
                lugar: 'Reino Unido',
                horario: '7:00AM - 15:00PM',
                tipo_servicio: 'Proporción de armas y munición')
          ],
        ),
      ),
    );
  }
}
