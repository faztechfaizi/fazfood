import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {  

  // get collection of orders
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  //save order to database
  Future<void> saveOrderToDatabase(String reciept) async {
    await orders.add({
      'date':DateTime.now(),
      'order':reciept,
      

    });
  }

}