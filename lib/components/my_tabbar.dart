import 'package:fazfood/models/food.dart';
import 'package:flutter/material.dart';

class MytabBar extends StatelessWidget {
  final TabController tabController;
  const MytabBar({super.key, required this.tabController});

  List <Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(

        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            category.toString().split('.').last.toUpperCase(),
            
             
          ),
        ),
       
        
      );
      
    } ).toList();
    
  }

  @override
  Widget build(BuildContext context) { return Container(
      // Background color of the TabBar
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(
          fontSize: 10, 
          fontWeight: FontWeight.bold, 
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10, 
          fontWeight: FontWeight.normal, 
        ),
        
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
