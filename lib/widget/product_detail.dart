import 'package:assigment_1/data/product_model.dart';
import 'package:assigment_1/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  final ProductModel? model;
  const ProductDetailsWidget({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(model?.image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Column(
              children: [
                Text(
                  model?.title ?? '',
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color(0xFF1D1F24),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  model?.description ?? '',
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color(0xFF1D1F24),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text('${model?.rating} (${model?.ratingCount})'),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Price: \$${model?.price.toStringAsFixed(2) ?? '0.00'}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1D1F24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
