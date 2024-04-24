import 'package:flutter/material.dart';

class Hotel {
  final String nombre;
  final String ciudad;
  final String pais;
  final String direccion;
  final String comodidades;
  final String imagenUrl;
  final String paisaje;

  Hotel({
    required this.nombre,
    required this.ciudad,
    required this.pais,
    required this.direccion,
    required this.comodidades,
    required this.imagenUrl,
    required this.paisaje,
  });
}

class HotelesPage extends StatelessWidget {
  final List<Hotel> hoteles = [
    Hotel(
      nombre: 'Hotel Continental',
      ciudad: 'New York',
      pais: 'Estados Unidos',
      direccion: '123 Main St, New York',
      comodidades: 'Piscina, Gimnasio, Restaurante',
      imagenUrl: 'assets/images/Estados_Unidos.webp',
      paisaje: 'assets/images/New_York_Skyline.webp',
    ),
    Hotel(
      nombre: 'Hotel Continental',
      ciudad: 'Roma',
      pais: 'Italia',
      direccion: 'Via del Corso, Roma, Italia',
      comodidades: 'Piscina, Gimnasio, Restaurante',
      imagenUrl: 'assets/images/Italia.png',
      paisaje: 'assets/images/Roma.webp',
    ),
    Hotel(
      nombre: 'Hotel Continental',
      ciudad: 'Casablanca',
      pais: 'Marruecos',
      direccion: 'Avenue Hassan II, Casablanca, Marruecos',
      comodidades: 'Piscina, Gimnasio, Restaurante',
      imagenUrl: 'assets/images/Marruecos.png',
      paisaje: 'assets/images/Casablanca.webp',
    ),
    Hotel(
      nombre: 'Hotel Continental',
      ciudad: 'Osaka',
      pais: 'Japon',
      direccion: 'Umeda, Kita WardOsaka, Osaka Prefecture , Japón',
      comodidades: 'Piscina, Gimnasio, Restaurante',
      imagenUrl: 'assets/images/Japon.png',
      paisaje: 'assets/images/Hotel_osaka.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Hoteles',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'VT323',
              fontSize: 38.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: hoteles.length,
        itemBuilder: (context, index) {
          return _buildHotelItem(context, hoteles[index]);
        },
      ),
    );
  }

  Widget _buildHotelItem(BuildContext context, Hotel hotel) {
    return Container(
      margin: EdgeInsets.all(8), // Añadir un margen para separar los elementos
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white), // Borde blanco
        borderRadius: BorderRadius.circular(8), // Bordes redondeados
      ),
      child: ListTile(
        leading: Hero(
          tag: hotel.imagenUrl, // Usar la URL de la imagen como tag único
          child: Image.asset(
            hotel.imagenUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          hotel.nombre,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'VT323',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${hotel.ciudad}, ${hotel.pais}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VT323',
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 4),
            Text(
              hotel.direccion,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VT323',
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Comodidades: ${hotel.comodidades}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VT323',
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        onTap: () {
          _showHotelImageFullScreen(context, hotel);
        },
      ),
    );
  }

  void _showHotelImageFullScreen(BuildContext context, Hotel hotel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('Foto'),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'VT323',
                fontSize: 30,
                fontWeight: FontWeight.bold),
            centerTitle: true,
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          body: Center(
            child: Hero(
              tag: hotel.imagenUrl, // Utiliza el mismo tag que en la lista
              child: Image.asset(
                hotel
                    .paisaje, // Mostrar la imagen del paisaje en pantalla completa
              ),
            ),
          ),
        ),
      ),
    );
  }
}
