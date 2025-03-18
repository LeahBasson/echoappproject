import 'package:flutter/material.dart';

class ShoppingListsScreen extends StatelessWidget {
  const ShoppingListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping Lists',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal, // Updated AppBar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Shopping Lists',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: 3, // Simulated list count
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.shopping_cart, color: Colors.teal),
                    title: Text('Shopping List ${index + 1}',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    subtitle: const Text('Last updated: Today'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Navigate to the list details
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new shopping list action
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add, size: 30),
        tooltip: 'Add New Shopping List',
      ),
    );
  }
}
