import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/shoppingcartProvider.dart';
import 'package:provider_example/pages/shoppingmodel.dart';

class Shopping_cart_Screen extends StatefulWidget {
  const Shopping_cart_Screen({super.key});

  @override
  State<Shopping_cart_Screen> createState() => _Shopping_cart_ScreenState();
}

class _Shopping_cart_ScreenState extends State<Shopping_cart_Screen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShoppingCartProvider>(context, listen: false);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            provider.addItems(shoppingModel(itemsName: "ffffff"));
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Add to cart"),
        ),
        body: Consumer<ShoppingCartProvider>(
          builder: (context, value, child) {
            return ListView.builder(
                itemCount: value.cartItem.length,
                itemBuilder: (context, index) {
                  final item = value.cartItem[index];
                  return ListTile(
                      textColor: Colors.red,
                      title: Text(value.cartItem[index].itemsName),
                      trailing: IconButton(
                          onPressed: () {
                            value.removeItems(item);
                          },
                          icon: Icon(Icons.delete)));
                });
          },
        ));
  }
}
