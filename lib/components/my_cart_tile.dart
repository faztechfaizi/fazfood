import 'package:fazfood/components/my_quantity_selctor.dart';
import 'package:fazfood/models/cart_items.dart';
import 'package:fazfood/models/restaurant.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        height: 80,
                        width: 80,
                      )),
                      const SizedBox(width: 10,),
              
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name, ),
                            Text( 'AED ${cartItem.food.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                            SizedBox(height: 10,),

                            
                          ],
                        ),
                      ),

                      const Spacer(),
              
                      QuantitySelctor(quantity: cartItem.quantity, food: cartItem.food, onIncrement: (){
                        restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
              
                      } , onDecrement: (){
                        restaurant.removeFromCart(cartItem);
                      }), 
                ],
              ),
            ),
            SizedBox(height: cartItem.selectedAddons.isEmpty ? 0 : 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              children: cartItem.selectedAddons.map((addon) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FilterChip(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 12),
                  shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                  label: Row(children: [
                  Text(addon.name),
                  Text( ' AED ${addon.price}'),
                
                ],), onSelected: (value){},
                
                
                ),
              )
              ).toList(),
              
              )
            ),
            
          ],
        ),
      );
    });
  }
}
