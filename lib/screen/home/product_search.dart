import 'package:assigment_1/data/product_model.dart';
import 'package:assigment_1/widget/product_widget.dart';
import 'package:flutter/material.dart';

// SearchDelegate for products
class ProductSearch extends SearchDelegate<ProductModel> {
  final List<ProductModel> products;

  ProductSearch(this.products);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(
          context,
          ProductModel(
            id: 0,
            title: '',
            price: 0,
            description: '',
            category: '',
            rating: 0,
            ratingCount: 0,
            image: '',
          ),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results =
        products
            .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ProductWidget(product: results[index]);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions =
        products
            .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final product = suggestions[index];
        return ListTile(
          leading: Image.network(product.image, width: 50, height: 50),
          title: Text(product.title),
          onTap: () {
            query = product.title;
            showResults(context);
          },
        );
      },
    );
  }
}
