import 'package:flutter/material.dart';

class ListView3Screen extends StatelessWidget {

  final opciones = const[
    'Korn','System Of A Down','Mudvayne','Slipknot','Limp Bizkit','Tool'];
   
  const ListView3Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Version 3'),
        elevation: 5,
      ),
      body: ListView(
        children: [
          ...opciones.map(
            (e) => ListTile(
              leading: Icon(Icons.router_rounded),
              title: Text(e),
              trailing: Icon(Icons.auto_fix_normal_rounded),
            )
            )
          /*ListTile(
            leading: Icon(Icons.check_box),
            title: Text('Listado nuevo numero 1'),
          )*/
        ],
      )
    );
  }
}