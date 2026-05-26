import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),

        child: Column(
          children: const [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.orange,

              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Usuario teste uniesp',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'usuario@gmail.com',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('João Pessoa - PB'),
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text('(83) 99999-9999'),
            ),
          ],
        ),
      ),
    );
  }
}