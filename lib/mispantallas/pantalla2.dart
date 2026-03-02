import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {

    Color fondo = const Color(0xFFFFEBEE);
    Color barraColor = const Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Petco - Productos"),
        backgroundColor: Colors.redAccent,
        actions: const [
          Icon(Icons.favorite),
          SizedBox(width: 10),
          Icon(Icons.person),
          SizedBox(width: 10)
        ],
      ),

      backgroundColor: fondo,

      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [

                const SizedBox(height: 10),

                // IMAGEN + TEXTO
                Row(
                  children: [

                    Expanded(
                      flex: 2,
                      child: Image.network(
                        "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/petcologos.png",
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Expanded(
                      flex: 3,
                      child: Text(
                        "Bienvenido a Petco",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // TEXTO + ICONO
                Row(
                  children: [

                    const Expanded(
                      child: Text(
                        "Ver alimentos para mascotas",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    IconButton(
                      icon: const Icon(Icons.pets),
                      onPressed: () {},
                    )
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    const Expanded(
                      child: Text(
                        "Accesorios recomendados",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    IconButton(
                      icon: const Icon(Icons.shopping_bag),
                      onPressed: () {},
                    )
                  ],
                ),

                const SizedBox(height: 25),

                // SEGUNDA IMAGEN + TEXTO
                Row(
                  children: [

                    Expanded(
                      flex: 2,
                      child: Image.network(
                        "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/grafica.jpg",
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Expanded(
                      flex: 3,
                      child: Text(
                        "El 90% de nuestros clientes tienen satisfacción excelente.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // IMAGEN QUE VA A PANTALLA 3
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pantalla3');
                  },
                  child: Image.network(
                    "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/croquetas.jpg",
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 15),

                // SEGUNDA IMAGEN
                Image.network(
                  "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/productos%20gato.jpg",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),

      // BARRA DE NAVEGACION
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

          if (index == 0) {
            Navigator.pushNamed(context, '/');
          }

        },
      ),
    );
  }
}