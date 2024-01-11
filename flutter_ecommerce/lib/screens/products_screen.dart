import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product.dart';

class ProductsScreen extends StatefulWidget {

  static const routeName = '/products';

  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  final products = [
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
  List<Product> _filteredProducts = [];
  bool _isSearch = false;
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filteredProducts = products;
  }

  void _performSearch() {
    setState(() {
      _filteredProducts = products.where(
        (product) => product.name.toLowerCase().contains(_searchController.text.toLowerCase())
      ).toList();
    });
  }

  Widget _buildSearch() {
    if (!_isSearch) {
      return const Text('Products');
    }
    return TextField(
        controller: _searchController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          setState(() {
            _isSearch = false;
          });
        },
        onChanged: (value) {
          _performSearch();
        },
      );
  }

  Widget _buildListItem(Product product) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text("\$ ${product.unitPrice}"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildSearch(),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isSearch = true;
              });
            }, 
            icon: const Icon(Icons.search),
          ),
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          height: MediaQuery.of(context).size.height,
          child: _filteredProducts.isEmpty ? const Center(child: Text('No product founds')) : ListView.builder(
            itemCount: _filteredProducts.length,
            itemBuilder: (ctx, ind) => _buildListItem(_filteredProducts[ind]),
          ),
        ),
      ),
    );
  }
}