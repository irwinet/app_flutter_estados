import 'package:app_flutter_estados/models/usuario.dart';
import 'package:app_flutter_estados/services/usuario_service.dart';
import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text('Establecer Usuario', style: TextStyle(color: Colors.white),),
              onPressed: () {
                final nuevoUsuario = new Usuario(nombre: 'Irwin', edad: 29, profesiones: ['Sistemas']);
                usuarioService.cargarUsuario(nuevoUsuario);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text('Cambiar Edad', style: TextStyle(color: Colors.white),),
              onPressed: () {
                usuarioService.cambiarEdad(30);
              },
            ),

            MaterialButton(
              color: Colors.blue,
              child: const Text('Añadir Profesion', style: TextStyle(color: Colors.white),),
              onPressed: () {
                
              },
            )
          ],
        ),
     ),
   );
  }
}