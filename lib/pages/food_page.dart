import 'package:fazfood/components/my_button.dart';
import 'package:fazfood/models/food.dart';
import 'package:fazfood/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon , bool> selectedAddons = {

  };
  FoodPage({super.key, required this.food}){
    for(Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add item to cart

  void addToCart(Food foods, Map<Addon , bool> selectedAddons){   
    Navigator.pop(context);
    List<Addon> currentSelectedAddon = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentSelectedAddon.add(addon);
      }
    }

    Provider.of<Restaurant>(context, listen: false).addToCart(foods, currentSelectedAddon);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_outlined),) ,
        
        title:Text(widget.food.name) ,
      ),
        body: SingleChildScrollView(
          child: Column(
            
                children: [
                    ClipRRect(
             borderRadius: BorderRadius.circular(10),
            child: Image.asset(
             widget.food.imagePath,
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
                     )),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.food.name,
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text( 'AED ${widget.food.price}',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food.description,
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Add-ons',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: ListView.builder(
                      itemCount: widget.food.availableAddons.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text('AED${addon.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool ? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              });
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
          
          MyButton(onTap: () => addToCart(widget.food,widget.selectedAddons), text: 'Add To Cart'),

          const SizedBox(height: 25,)
                ],
            
          )
        ));
  }
}

