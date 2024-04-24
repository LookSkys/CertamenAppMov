import 'package:certamen_app_beta/widgets/appbar_asesinos.dart';
import 'package:certamen_app_beta/widgets/servicio_info.dart';
import 'package:flutter/material.dart';

class LimpiadoresPage extends StatelessWidget {
  const LimpiadoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppbarAsesinos(nombre_appbar: 'Servicio'),
      body: Container(
        child: Column(
          children: [
            ServicioDetalle(
                nombre_servicio: 'Limpiadores',
                nombre: 'Desconocidos',
                foto: 'limpiadores.jpg',
                lugar: 'Internacional',
                horario: '8:00M - 22:00PM',
                tipo_servicio: 'Limpieza de escenas del crimen')
          ],
        ),
      ),
    );
  }
}
