import 'package:flutter/material.dart';  

void main() {  
  runApp(const Mockup());  
}  


class Mockup extends StatelessWidget {
  const Mockup({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return const MaterialApp(  
      title: 'Plant Details',  
      home: PlantDetailsPage(),  
    );  
  }  
}  

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Details'),  
        centerTitle: true,  
      ),  
      body: SingleChildScrollView(  
        child: Padding(  
          padding: const EdgeInsets.all(16.0),  
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [  
              // Placeholder for plant image  
              Center(  
                child: Image.network(  
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFgjxe6LUhYApmSZxS3A7qhGrcpgtGBBr_zw&s', // Replace with your image URL  
                  height: 150,  
                  width: 150,  
                ),  
              ),  
              const SizedBox(height: 20),  
              const Text(  
                'Ageratum',  
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  
              ),  
              const Row(  
                children: [  
                  // Rating  
                  Icon(Icons.star, color: Colors.amber),  
                  Text('4.8', style: TextStyle(fontSize: 16)),  
                ],  
              ),  
              const SizedBox(height: 10),  
              const Text(  
                'Ageratum is a group of 40 to 60 tropical and warm temperate flowering annuals...',  
                style: TextStyle(fontSize: 16),  
              ),  
              const SizedBox(height: 10),  
              const Text('Height: 12.6"', style: TextStyle(fontSize: 16)),  
              const Text('Humidity: 82%', style: TextStyle(fontSize: 16)),  
              const Text('Plant: Orchid', style: TextStyle(fontSize: 16)),  
              const Text('Size: Medium', style: TextStyle(fontSize: 16)),  
              const SizedBox(height: 20),  
              const Text(  
                'Price: \$39.99',  
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),  
              ),  
              const SizedBox(height: 20),  
              ElevatedButton(  
                onPressed: () {  
                  // Add to Cart action  
                },  
                child: const Text('Add to Cart'),  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}