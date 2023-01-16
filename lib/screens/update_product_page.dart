import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product.dart';
import 'package:storeapp/widgets/custom_button.dart';
import 'package:storeapp/widgets/custom_form_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'updateProduct';
  String? productName;
  String? image;
  String? desc;
  double? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                onchange: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                onchange: (data) {
                  desc = data;
                },
                hintText: 'description',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                textInputType: TextInputType.number,
                onchange: (data) {
                  price = double.parse(data);
                },
                hintText: 'Price',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                onchange: (data) {
                  image = data;
                },
                hintText: 'image',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: 'Update',
                ontap: () {
                  UpdateProductService();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
