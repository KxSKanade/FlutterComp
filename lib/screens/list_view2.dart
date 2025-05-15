import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final opciones = const[
    'Korn','System Of A Down','Mudvayne','Slipknot','Limp Bizkit','Tool'];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('ListView Version 2',
        style: TextStyle(color: Colors.white),),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.music_note),
          title: Text(opciones[index]),
          trailing: const Icon(Icons.play_arrow,
          color: Color.fromARGB(100, 136, 14, 79),),
          onTap: () {
            final nombre = opciones[index];
            print(nombre);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: opciones.length,
      ),
    );
  }
}