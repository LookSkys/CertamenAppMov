import 'package:flutter/material.dart';

class DescripcionContratoPage extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String imageUrl;
  final String emisor;
  final String organizacion;

  DescripcionContratoPage({
    required this.titulo,
    required this.descripcion,
    required this.imageUrl,
    required this.emisor,
    required this.organizacion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          titulo,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontFamily: 'VT323',
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.black, // Fondo negro
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagen en la parte superior
              Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              // Separador entre la imagen y la descripción
              SizedBox(height: 16.0),
              // Columna para la descripción y otras cosas
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Descripción
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      descripcion,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'VT323',
                      ),
                    ),
                  ),
                  // Separador entre la descripción y la información adicional
                  SizedBox(height: 16.0),
                  // Texto para el emisor
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Emisor: $emisor',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'VT323',
                      ),
                    ),
                  ),
                  // Texto para la organización
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Organización: $organizacion',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'VT323',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height:
                      16.0), // Espacio entre el contenido y el botón de inscripción
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.red; // Cambio de color al presionar
                      }
                      return Colors.white; // Color gris oscuro normal
                    },
                  ),
                ),
                child: Text(
                  'Inscripción',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'VT323',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
