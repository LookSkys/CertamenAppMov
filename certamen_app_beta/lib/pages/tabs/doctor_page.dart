import 'package:certamen_app_beta/widgets/appbar_asesinos.dart';
import 'package:certamen_app_beta/widgets/servicio_info.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppbarAsesinos(nombre_appbar: 'Servicio'),
      body: Container(
        child: Column(
          children: [
            ServicioDetalle(
                nombre_servicio: 'Doctor',
                nombre: 'Desconocido',
                foto: 'doctor.jpg',
                lugar: 'Estados Unidos',
                horario: '10:00AM - 20:00PM',
                tipo_servicio: 'servicio médico de urgencia')
          ],
        ),
      ),
    );
  }
}
