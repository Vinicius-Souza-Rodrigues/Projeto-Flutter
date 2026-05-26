import 'package:flutter/material.dart';
import '../dados.dart';
import 'carrinho_page.dart';
import 'perfil_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> comidas = const [
    {
      'nome': 'Hambúrguer',
      'preco': 25,
      'icone': Icons.lunch_dining,
    },
    {
      'nome': 'Pizza',
      'preco': 40,
      'icone': Icons.local_pizza,
    },
    {
      'nome': 'Sorvete',
      'preco': 15,
      'icone': Icons.icecream,
    },
    {
      'nome': 'Refrigerante',
      'preco': 8,
      'icone': Icons.local_drink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio'),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  'Food Express',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Carrinho'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CarrinhoPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PerfilPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: comidas.length,

        itemBuilder: (context, index) {
          final comida = comidas[index];

          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: ListTile(
              leading: Icon(
                comida['icone'],
                size: 40,
                color: Colors.orange,
              ),

              title: Text(
                comida['nome'],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                'R\$ ${comida['preco']}',
                style: const TextStyle(fontSize: 18),
              ),

              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart),

                onPressed: () {
                  carrinho.add(comida);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${comida['nome']} adicionado ao carrinho!',
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}