import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  // Lista de produtos simulada
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Pizza 1',
      price: 'R\$ 99,90',
      imagePath: 'assets/images/products/1.png',
    ),
    Product(
      id: '2',
      title: 'Pizza 2',
      price: 'R\$ 27,90',
      imagePath: 'assets/images/products/2.png',
    ),
    Product(
      id: '3',
      title: 'Pizza 3',
      price: 'R\$ 45,00',
      imagePath: 'assets/images/products/3.png',
    ),
    Product(
      id: '4',
      title: 'Pizza 4',
      price: 'R\$ 30,00',
      imagePath: 'assets/images/products/4.png',
    ),
    Product(
      id: '5',
      title: 'Pizza 5',
      price: 'R\$ 35,00',
      imagePath: 'assets/images/products/5.png',
    ),
    Product(
      id: '6',
      title: 'Pizza 6',
      price: 'R\$ 60,00',
      imagePath: 'assets/images/products/6.png',
    ),
        Product(
      id: '7',
      title: 'Pizza 7',
      price: 'R\$ 65,00',
      imagePath: 'assets/images/products/7.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToPizzaria '),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 196, 68),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length, // Usa a quantidade de produtos da lista
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              // Navega para a tela de detalhes passando o objeto do produto como argumento
              Navigator.pushNamed(
                context,
                '/productDetails',
                arguments: product,
              );
            },
            child: ProductCard(
              title: product.title,
              price: product.price,
              imagePath: product.imagePath,
            ),
          );
        },
      ),
    );
  }
}
