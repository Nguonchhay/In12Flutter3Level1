import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/category.dart';
import 'package:flutter_ecommerce/models/product.dart';
import 'package:flutter_ecommerce/screens/products_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_ecommerce/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final categories = [
      Category(
        title: 'Food',
        imageUrl: 'https://fastly.picsum.photos/id/348/200/200.jpg?hmac=3DFdqMmDkl3bpk6cV1tumcDAzASPQUSbXHXWZIbIvks'
      ),
      Category(
        title: 'Milk',
        imageUrl: 'https://fastly.picsum.photos/id/1077/200/200.jpg?hmac=hiq7UCoz9ZFgr9HcMCpbnKhV-IMyOJqsQtVFyqmqohQ'
      ),
      Category(
        title: 'News',
        imageUrl: 'https://fastly.picsum.photos/id/982/200/200.jpg?hmac=X2ocb-PEJJpYgQn2Ib8SKCaWKsI-2hGcsvwZjWStNAw'
      ),
      Category(
        title: 'Phone',
        imageUrl: 'https://fastly.picsum.photos/id/429/200/200.jpg?hmac=9FwQwE20mRBTbcAmKXOhnDdpvTgru3vSGriKkpK0kI4'
      )
    ];

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

    Widget _buildCategoryListItem(Category category) {
      return Container(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          child: Image.network(
            category.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    Widget _buildLatestProductItem(Product product) {
      return GridTile(
          child: ClipRect(
            child: Image.network(
            product.imageUrl,
            height: 180.0,
            fit: BoxFit.fill,
          ),
        ),
      );

    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-Commerce',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            onPressed: () {
              // Check if user already logged in, go to CartScreen else go to LoginScreen
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            }, 
            icon: const FaIcon(FontAwesomeIcons.cartShopping),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0,),
              child: Text(
                'Our Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 200.0,
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (ctx, ind) {
                  return _buildCategoryListItem(categories[ind]);
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Latest Products',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ProductsScreen.routeName);
                    },
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            Container(
              height: 500.0,
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ), 
                itemCount: latestProducts.length,
                itemBuilder: (ctx, ind) => _buildLatestProductItem(latestProducts[ind]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}