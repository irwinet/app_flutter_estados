import 'package:app_flutter_estados/models/usuario.dart';
import 'package:app_flutter_estados/services/usuario_service.dart';
import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,        
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
          return snapshot.hasData
            ? InformacionUsuario(usuario: snapshot.data!,)
            : const Center(child: Text('No hay informacion del usuario'),);
        },
      ),
     floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.next_plan),
      onPressed: () => Navigator.pushNamed(context, 'pagina2'),
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  
  final Usuario usuario;
  
  const InformacionUsuario({super.key, required this.usuario});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuario.edad}'),),

          const Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title: Text('Profesion 1: '),),
          ListTile(title: Text('Profesion 2: '),),
          ListTile(title: Text('Profesion 3: '),),
        ],
      ),
    );
  }
}