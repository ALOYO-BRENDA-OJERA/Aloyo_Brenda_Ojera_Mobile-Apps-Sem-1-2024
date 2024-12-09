import 'package:flutter/material.dart';

void main() {
  runApp(const Mockup());
}

class Mockup extends StatelessWidget {
  const Mockup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFgjxe6LUhYApmSZxS3A7qhGrcpgtGBBr_zw&s',
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(height: 20),
              // Title and Rating with space between them
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ageratum',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '4.8',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '(268 Reviews)',
                        style: TextStyle(fontSize: 16, color: Colors.green), // Change color to green
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Ageratum is a group of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae.Most species are native to central America... Read More',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              // Row for Height, Humidity, Plant, and Size
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Height: 12.6"', style: TextStyle(fontSize: 16)),
                  Text('Humidity: 82%', style: TextStyle(fontSize: 16)),
                  Text('Plant: Orchid', style: TextStyle(fontSize: 16)),
                  Text('Size: Medium', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 20),
              // Price section with 'Price' label above the value
              const Text(
                'Price:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10.0),
              const Text(
                '\$39.99',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Row to align the button to the other side of the page with green color
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // Align button to the right
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set button color to green
                    ),
                    onPressed: () {
                      // Add to Cart action
                    },
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}