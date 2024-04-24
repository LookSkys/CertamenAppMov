import 'package:flutter/material.dart';

class ServicioDetalle extends StatelessWidget {
  final String nombre_servicio;
  final String nombre;
  final String foto;
  final String lugar;
  final String horario;
  final String tipo_servicio;

  ServicioDetalle(
      {required this.nombre_servicio,
      required this.nombre,
      required this.foto,
      required this.lugar,
      required this.horario,
      required this.tipo_servicio});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_nombre = TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontFamily: 'VT323',
        color: Colors.white);
    TextStyle estilo_seccion = TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        fontFamily: 'VT323',
        color: Colors.white);
    TextStyle estilo_dato =
        TextStyle(fontSize: 17, fontFamily: 'VT323', color: Colors.white);
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 10),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Image(
              image: AssetImage('assets/images/${this.foto}'),
              width: 300,
              height: 300,
            ),
          ),
          SizedBox(height: 20),
          //CUADRO DE INFO
          Text(this.nombre_servicio, style: estilo_nombre),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Nombre: ', style: estilo_seccion),
                    Text(this.nombre, style: estilo_dato),
                  ],
                ),
                Row(
                  children: [
                    Text('Lugar: ', style: estilo_seccion),
                    Text(this.lugar, style: estilo_dato),
                  ],
                ),
                Row(
                  children: [
                    Text('Horario: ', style: estilo_seccion),
                    Text(this.horario, style: estilo_dato),
                  ],
                ),
                Row(
                  children: [
                    Text('Tipo de servicio: ', style: estilo_seccion),
                    Text(this.tipo_servicio, style: estilo_dato),
                  ],
                ),
                SizedBox(height: 40),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Adquirir',
                      style: estilo_dato,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
