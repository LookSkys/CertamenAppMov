import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

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

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Perfil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 38.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'VT323',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Envuelve el Container principal con SingleChildScrollView
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 2),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 10),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Image(
                  image: AssetImage('assets/images/chidi.jpg'),
                  width: 300,
                  height: 300,
                ),
              ),
              SizedBox(height: 30),
              //CUADRO DE INFO
              Text('Chidi', style: estilo_nombre),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    //INFORMACION
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Información Personal',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'VT323',
                              color: Colors.white),
                        ),
                        SizedBox(height: 30)
                      ],
                    ),
                    //NOMBRE
                    Row(
                      children: [
                        SizedBox(height: 20),
                        Text('Nombre: ', style: estilo_seccion),
                        Text('Desconocido', style: estilo_dato),
                        SizedBox(height: 30)
                      ],
                    ),
                    //CIUDAD
                    Row(
                      children: [
                        Text('Pais: ', style: estilo_seccion),
                        Text('Chile ', style: estilo_dato),
                        Image(
                          image: AssetImage('assets/images/chile.png'),
                          width: 20,
                          height: 20,
                        )
                      ],
                    ),
                    //EDAD
                    Row(
                      children: [
                        Text('Edad: ', style: estilo_seccion),
                        Text('44 años', style: estilo_dato),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Sexo: ', style: estilo_seccion),
                        Text('Masculino ', style: estilo_dato),
                        Icon(MdiIcons.genderMale, size: 20, color: Colors.blue)
                      ],
                    ),
                    //CANTIDAD DE ASESINATOS
                    Row(
                      children: [
                        Text('Asesinatos: ', style: estilo_seccion),
                        Text('140 ', style: estilo_dato),
                        Icon(MdiIcons.knife, size: 20, color: Colors.red)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
