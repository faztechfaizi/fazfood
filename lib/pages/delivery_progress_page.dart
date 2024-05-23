import 'package:fazfood/components/my_receipt.dart';
import 'package:fazfood/models/restaurant.dart';
import 'package:fazfood/services/auth/database/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
FirestoreService firestore = FirestoreService();
  @override
  void initState() {
  
    super.initState();
    String reciept = context.read<Restaurant>().displayCartReceipt();
    firestore.saveOrderToDatabase(reciept);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Progress'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [MyReceipt(),],
      ),
    );
  }
}

Widget _buildBottomNavBar(BuildContext context) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(48), topRight: Radius.circular(40)),
    ),
    padding: const EdgeInsets.all(25),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Faizal',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Text(
              'Driver',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),

        Spacer(),
        Row(
          children: [
            
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.message),
          color: Theme.of(context).colorScheme.primary,
          ),
        ),

        const SizedBox(width: 10,),
        
        Container(
          decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              
              ),
              
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ),
          ],
        )
      ],
    ),
  );
}
