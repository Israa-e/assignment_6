import 'package:assigment_1/data/product_model.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(product.title),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(product.image),
                    SizedBox(height: 10),
                    Text("Title: ${product.title}"),
                    SizedBox(height: 5),
                    Text("Description: ${product.description}"),
                    SizedBox(height: 5),
                    Text("Price: \$${product.price}"),
                    SizedBox(height: 5),
                    Text("Category: ${product.category}"),
                    SizedBox(height: 10),
                    Text(
                      "  Rating: ${product.rating} , (${product.ratingCount} reviews)",
                    ),

                    SizedBox(height: 5),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
        child: ListTile(
          leading: Container(
            height: 300,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.purple.shade50,

              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(5),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product.image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          title: Text(product.title),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 4),
              Text('${product.rating} (${product.ratingCount})'),
            ],
          ),
          trailing: Text(product.price.toStringAsFixed(2)),
        ),
      ),
    );
  }
}
