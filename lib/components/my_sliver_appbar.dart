import 'package:fazfood/pages/cart_page.dart';
import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        
        IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage())),
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('FazFood',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
           padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0,right: 0,top: 0),
      ),
    );
  }
}
