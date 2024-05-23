

import 'package:fazfood/models/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodTile extends StatelessWidget {

  final Food food;
  final void Function()? onTap;
  
  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    const SizedBox(height: 10,),
                    Text( 'AED ' + food.price.toString(),style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                   const SizedBox(height: 10,),
                    Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
            
                    
            
                  ],
                ),
                
                ),

                const SizedBox(width: 15,),
            
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(food.imagePath)),

                  
              ],
            ),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,

          color: Theme.of(context).colorScheme.tertiary,)
      ],
    );
  }
}