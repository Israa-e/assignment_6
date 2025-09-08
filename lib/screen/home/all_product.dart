import 'dart:convert';

import 'package:assigment_1/data/product_model.dart';
import 'package:assigment_1/screen/home/product_search.dart';
import 'package:assigment_1/widget/drawer_widget.dart';
import 'package:assigment_1/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeV2 extends StatefulWidget {
  const HomeV2({super.key});

  @override
  State<HomeV2> createState() => _HomeV2State();
}

class _HomeV2State extends State<HomeV2> {
  List<ProductModel> products = [];
  List<ProductModel> filteredProducts = []; // search results

  @override
  void initState() {
    fetchData().then((value) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Color(0xff1D1F24),
          elevation: 0,

          title: Text(
            "All Products",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            Image.asset('assets/icons/shopping_cart.png'),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                showSearch(context: context, delegate: ProductSearch(products));
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        body:
            products.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                  itemBuilder: (context, index) {
                    return ProductWidget(product: products[index]);
                  },
                  itemCount: products.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                ),
      ),
    );
  }

  fetchData() async {
    var response = await get(Uri.parse("https://fakestoreapi.com/products"));
    List data = [];
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      for (Map<String, dynamic> product in data) {
        products.add(ProductModel.fromJson(product));
        setState(() {});
      }
      print("Data fetched successfully");
      print(data);
    } else {
      print("Failed to fetch data");
    }
  }

  searchData(String query) {
    query = query.toLowerCase(); // make search case-insensitive
    filteredProducts =
        products.where((product) {
          return product.title.toLowerCase().contains(query); // search by title
        }).toList();
    setState(() {}); // update UI
  }
}
