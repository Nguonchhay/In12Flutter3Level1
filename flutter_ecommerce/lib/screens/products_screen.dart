import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product.dart';

class ProductsScreen extends StatefulWidget {

  static const routeName = '/products';

  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  final latestProducts = [
    Product(
      name: 'Product 001', 
      imageUrl: 'https://fastly.picsum.photos/id/94/200/200.jpg?hmac=6A2OfXxXR04lSduBcURN4k0_3aiDGcJQjMpSwDmQevg', 
      description: 'You can specify how many words should be generated right next to the word "lorem". For example, lorem5 will generate a 5-words dummy text.', 
      unitPrice: 1.5,
      id: '001'
    ),
    Product(
      name: 'Product 002', 
      imageUrl: 'https://fastly.picsum.photos/id/94/200/200.jpg?hmac=6A2OfXxXR04lSduBcURN4k0_3aiDGcJQjMpSwDmQevg', 
      description: 'You can specify how many words should be generated right next to the word "lorem". For example, lorem5 will generate a 5-words dummy text.', 
      unitPrice: 0.5,
      id: '002'
    ),
    Product(
      name: 'Product 003', 
      imageUrl: 'https://fastly.picsum.photos/id/94/200/200.jpg?hmac=6A2OfXxXR04lSduBcURN4k0_3aiDGcJQjMpSwDmQevg', 
      description: 'You can specify how many words should be generated right next to the word "lorem". For example, lorem5 will generate a 5-words dummy text.', 
      unitPrice: 2.5,
      id: '003'
    ),
    Product(
      name: 'Product 004', 
      imageUrl: 'https://fastly.picsum.photos/id/94/200/200.jpg?hmac=6A2OfXxXR04lSduBcURN4k0_3aiDGcJQjMpSwDmQevg', 
      description: 'You can specify how many words should be generated right next to the word "lorem". For example, lorem5 will generate a 5-words dummy text.', 
      unitPrice: 10.5,
      id: '004'
    ),
    Product(
      name: 'Product 005', 
      imageUrl: 'https://fastly.picsum.photos/id/94/200/200.jpg?hmac=6A2OfXxXR04lSduBcURN4k0_3aiDGcJQjMpSwDmQevg', 
      description: 'You can specify how many words should be generated right next to the word "lorem". For example, lorem5 will generate a 5-words dummy text.', 
      unitPrice: 4.5,
      id: '005'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: const Placeholder()
    );
  }
}