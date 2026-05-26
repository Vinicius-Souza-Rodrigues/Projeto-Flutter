import 'package:flutter/material.dart';
import '../dados.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double total = 0;

    for (var item in carrinho) {
      total += item['preco'];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: carrinho.length,

                itemBuilder: (context, index) {
                  final item = carrinho[index];

                  return Card(
                    child: ListTile(
                      leading: Icon(item['icone']),
                      title: Text(item['nome']),
                      subtitle: Text(
                        'R\$ ${item['preco']}',
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Total: R\$ $total',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Pedido realizado com sucesso!',
                      ),
                    ),
                  );
                },

                child: const Text(
                  'Finalizar Pedido',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}