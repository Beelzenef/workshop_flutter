import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/order.dart';

class OrdersPage extends StatelessWidget {
  final List<Order> orders;
  final DateFormat formatter = DateFormat('dd-MM-yyyy (HH:mm)');

  OrdersPage({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All your orders'),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 0),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Text(
                              '${orders[index].products} products for ${orders[index].total} 💶',
                              style: const TextStyle(color: Colors.black)),
                          Text(
                              'Ordered at ${formatter.format(orders[index].orderedAt)}',
                              style: const TextStyle(color: Colors.black)),
                        ],
                      ));
                })));
  }
}
