import 'package:fazfood/components/my_button.dart';
import 'package:fazfood/pages/delivery_progress_page.dart';

import 'package:flutter/material.dart';

import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;

  void userTappedPay(){
    if(formKey.currentState!.validate()){
      
      showDialog(context: context, builder: (context) => AlertDialog(
        title: const Text('Confirm Payment'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Card Number: $cardNumber'),
              Text('Expiry Date: $expiryDate'),
              Text('Card Holder Name: $cardHolderName'),
              Text('CVV: $cvvCode'),
            ],
            
          ),
          
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text('Cancel')),
          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DeliveryProgressPage()));
          }, child: const Text('Confirm')),
        ],
      ));
    }
    

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (onCreditCardModel) {},
          ),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                  isCvvFocused = data.isCvvFocused;
      
                
                });
              },
              formKey: formKey),
          
              const Spacer(
                
              ),
          
              MyButton(onTap: (){
                userTappedPay();
                
              }, text: 'PayNow'),
              const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
