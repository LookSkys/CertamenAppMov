import 'package:certamen_app_beta/pages/tabs/contrato.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Contrato {
  final IconData icon;
  final String title;
  final String status;
  final String amount;
  final String targetPerson;
  final String dangerLevel;
  final String description;
  final String imageUrl; // Cambiar a la ruta de archivo local
  final String emisor; // Nuevo atributo para el emisor
  final String organizacion; // Nuevo atributo para la organización

  Contrato({
    required this.icon,
    required this.title,
    required this.status,
    required this.amount,
    required this.targetPerson,
    required this.dangerLevel,
    required this.description,
    required this.imageUrl,
    required this.emisor, // Agrega el emisor al constructor
    required this.organizacion, // Agrega la organización al constructor
  });
}

class ContratosPage extends StatelessWidget {
  final List<Contrato> contratos = [
    Contrato(
      icon: MdiIcons.knife,
      title: 'Asesinato',
      status: 'Abierto',
      amount: '\$10,000,000,000',
      targetPerson: 'John Wick',
      dangerLevel: 'Alto',
      description:
          'Un contrato para eliminar a un objetivo peligroso que ha traicionado a la organización.',
      imageUrl: 'assets/images/JohnWick.png', // Ruta de archivo local
      emisor: 'Vincent Bisset de Gramont', // Emisor del contrato
      organizacion: 'The High Table', // Organización del contrato
    ),
    Contrato(
      icon: MdiIcons.bowArrow,
      title: 'Captura',
      status: 'Abierto',
      amount: '\$500,000,000',
      targetPerson: 'Winston Scott',
      dangerLevel: 'Alto',
      description:
          'Un contrato para capturar a un objetivo peligroso que ha traicionado a la organización.',
      imageUrl: 'assets/images/WinstonScott.webp', // Ruta de archivo local
      emisor: 'El Elder', // Emisor del contrato
      organizacion: 'La Alta Mesa', // Organización del contrato
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Contratos',
          style: TextStyle(
              color: Colors.white,
              fontSize: 38.0,
              fontFamily: 'VT323',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: contratos.length,
              itemBuilder: (context, index) {
                return _buildContractItem(context, contratos[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContractItem(BuildContext context, Contrato contrato) {
    return ListTile(
      tileColor: Colors.white70,
      leading: Icon(
        contrato.icon,
        color: Colors.black,
      ),
      title: Text(
        contrato.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'VT323',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Estado: ${contrato.status}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontFamily: 'VT323',
            ),
          ),
          Text(
            'Monto: ${contrato.amount}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontFamily: 'VT323',
            ),
          ),
          Text(
            'Persona Objetivo: ${contrato.targetPerson}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontFamily: 'VT323',
            ),
          ),
          Text(
            'Nivel de Peligro: ${contrato.dangerLevel}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontFamily: 'VT323',
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DescripcionContratoPage(
              titulo: contrato.title,
              descripcion: contrato.description,
              imageUrl: contrato.imageUrl,
              emisor: contrato.emisor, // Pasar el emisor
              organizacion: contrato.organizacion, // Pasar la organización
            ),
          ),
        );
      },
    );
  }
}
