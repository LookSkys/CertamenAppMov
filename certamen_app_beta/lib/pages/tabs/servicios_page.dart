import 'package:certamen_app_beta/pages/tabs/serv_page.dart';
import 'package:flutter/material.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_seccion = TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.bold,
        fontFamily: 'VT323',
        color: Colors.white);
    TextStyle estilo_dato =
        TextStyle(fontSize: 20, fontFamily: 'VT323', color: Colors.white);
    final String mi_parrafo = 'En esta sección encontrará los servicios\n'
        'disponibles para asesinos, solo debe presionar\n'
        'el que desea adquirir y se desplegaran todos\n'
        'los detalles de este.\n\n';

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //CONTAINER CON CUADRO DE TEXTO
          Row(
            children: [
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    Text('Información\n', style: estilo_seccion),
                    Text(mi_parrafo, style: estilo_dato),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServPage()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .red; // Cambio de color al presionar
                              }
                              return Colors.white; // Color gris oscuro normal
                            },
                          ),
                        ),
                        child: Text(
                          'Servicios',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'VT323',
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
