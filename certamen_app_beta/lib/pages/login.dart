import 'package:certamen_app_beta/pages/nav.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      appBar: AppBar(
        backgroundColor: Colors.black, // Color de fondo negro
        title: Text(
          'La Alta Mesa',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'VT323',
              fontSize: 38.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Envuelve el contenido en un SingleChildScrollView
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagen centrada
              Center(
                child: Image(
                  image: AssetImage('assets/images/logo.webp'),
                  width: 250, // Ancho de la imagen
                  height: 250, // Alto de la imagen
                ),
              ),
              SizedBox(height: 20), // Espacio entre la imagen y el contenedor
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.transparent, // Fondo transparente
                  border: Border.all(
                    color: Colors.white, // Color de la línea del borde
                    width: 2, // Ancho de la línea del borde
                  ),
                  borderRadius:
                      BorderRadius.circular(10.0), // Bordes redondeados
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 40.0,
                      child: Icon(
                        MdiIcons.account,
                        color: Colors.white, // Color Icono (Contrastado)
                        size: 50.0, // Tamaño Icono
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Color Usuario (Contrastado)
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'VT323',
                          fontSize: 20.0,
                        ), // Etiqueta blanca (Contrastada)
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.white), // Borde blanco (Contrastado)
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      style: TextStyle(
                          color: Colors.white), // Texto blanco (Contrastado)
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'VT323',
                          fontSize: 20.0,
                        ), // Etiqueta blanca (Contrastada)
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.white), // Borde blanco (Contrastado)
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Redirigir a otra página
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Nav()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .red[900]!; // Cambio de color al presionar
                            }
                            return Colors.white; // Color Blanco Boton
                          },
                        ),
                      ),
                      child: Text(
                        'Iniciar Sesion',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'VT323',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
