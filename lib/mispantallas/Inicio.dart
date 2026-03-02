import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController correoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Color azulPastel = const Color(0xFFB3E5FC);
  Color rojoPastel = const Color(0xFFFFCDD2);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // TITULO CENTRADO
        title: const Text("Petco - Inicio"),
        backgroundColor: rojoPastel,
        actions: const [
          Icon(Icons.pets),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart),
          SizedBox(width: 10)
        ],
      ),

      backgroundColor: azulPastel,

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // IMAGEN
              Image.network(
                "https://raw.githubusercontent.com/RolandoLimones/examen1_imagenes_0544/refs/heads/main/petcologos.png",
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 15),

              const Text(
                "Rolando Contreras Limones",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),

              const Text(
                "Grupo 6ºI",
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 30),

              // CAMPO CORREO
              TextFormField(
                controller: correoController,
                decoration: InputDecoration(
                  labelText: "Correo electrónico",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El correo no puede estar vacío";
                  }
                  if (!value.contains("@")) {
                    return "El correo debe contener @";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              // CAMPO CONTRASEÑA
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "La contraseña no puede estar vacía";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 25),

              // BOTON INICIAR SESION
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 170, 170),
                    padding: const EdgeInsets.all(15),
                  ),
                  onPressed: () {

                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/pantalla2');
                    }

                  },
                  child: const Text(
                    "Iniciar sesión",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Únete a nuestras redes sociales",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // FACEBOOK
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 171, 202, 228),
                    padding: const EdgeInsets.all(14),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse("https://www.facebook.com/Petco.Mexico/?locale=es_LA");
                    await launchUrl(url);
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text("Petco en Facebook"),
                ),
              ),

              const SizedBox(height: 10),

              // INSTAGRAM
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 160, 187),
                    padding: const EdgeInsets.all(14),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse("https://www.instagram.com/accounts/login/?next=%2Fpetco%2F&source=omni_redirect");
                    await launchUrl(url);
                  },
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("Petco en Instagram"),
                ),
              ),

              const SizedBox(height: 10),

              // X (TWITTER)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.all(14),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse("https://x.com/PetcoMexico");
                    await launchUrl(url);
                  },
                  icon: const Icon(Icons.alternate_email),
                  label: const Text("Petco en X"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}