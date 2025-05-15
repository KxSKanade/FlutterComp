import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,)
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.settings_accessibility),
          title: Text('Item de prueba'),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            Navigator.pushNamed(context, 'listview3');
          },
      ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}