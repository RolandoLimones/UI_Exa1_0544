import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {

    Color azulPastel = const Color(0xFFE3F2FD);
    Color barraColor = const Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Petco - Catálogo"),
        backgroundColor: Colors.blueAccent,
        actions: const [
          Icon(Icons.store),
          SizedBox(width: 10),
          Icon(Icons.home),
          SizedBox(width: 10)
        ],
      ),

      backgroundColor: azulPastel,

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [

          SizedBox(height: 10),

          ItemProducto(
            imagen: "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/croquetas1.jpg",
            titulo: "Croquetas Premium para Perro",
            descripcion:
                "Croquetas nutritivas con proteína de pollo que ayudan a mantener a tu perro fuerte, activo y con un pelaje saludable.",
          ),

          ItemProducto(
            imagen: "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/croquetas2.jpg",
            titulo: "Croquetas Balanceadas para Gato",
            descripcion:
                "Alimento completo para gatos con vitaminas y minerales esenciales para su desarrollo y bienestar diario.",
          ),

          ItemProducto(
            imagen: "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/croquetas3.jpg",
            titulo: "Croquetas Naturales",
            descripcion:
                "Fórmula natural con ingredientes seleccionados que aportan proteínas, fibra y nutrientes esenciales.",
          ),

          ItemProducto(
            imagen: "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/croquetas4.jpg",
            titulo: "Croquetas Alta Energía",
            descripcion:
                "Ideales para mascotas activas que necesitan energía extra para jugar, correr y mantenerse saludables.",
          ),

          SizedBox(height: 20),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: barraColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Compras",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),

        ],

        onTap: (index) {

          if (index == 1) {
            Navigator.pushNamed(context, '/pantalla2');
          }

        },
      ),
    );
  }
}

class ItemProducto extends StatelessWidget {

  final String imagen;
  final String titulo;
  final String descripcion;

  const ItemProducto({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // IMAGEN IZQUIERDA
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imagen,
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            // TEXTO DERECHA
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    descripcion,
                    style: const TextStyle(fontSize: 15),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}