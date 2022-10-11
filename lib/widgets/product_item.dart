import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.title,
      required this.id,
      required this.imageUrl, required this.price});
  final String title;
  final String id;
  final String imageUrl;
  final double price;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: GridTile(
        header: GridTileBar(
            backgroundColor: Colors.black.withOpacity(0.8), title: Text(title)),
        footer: GridTileBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ProductDetailScreen(title: title, price: price,);
              },
            ));
          },
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: CircleAvatar(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
