import 'package:flutter/material.dart';
import 'home.dart'; // Importing the HomePage widget

void main() {
  runApp(const MaterialApp(
    home: MenuPage(),
  ));
}

var countries = ['London', 'Berlin', 'Paris', 'Madrid', 'Prague', 'Rome', 'Athens', 'Glasgow', 'Warsaw', 'Budapest', 'Tokyo', 'Mumbai', 'Seoul'];

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cities',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlueAccent],
          ),
        ),
        child: Center(
          child: Scrollbar(
            child: ListView.builder(
              itemCount: countries.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    title: Text(
                      countries[index],
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      String selectedCountry = countries[index]; // Store the selected country
                      _navigateToHomePage(context, selectedCountry); // Pass the selected country
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToHomePage(BuildContext context, String selectedCountry) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home(joe: selectedCountry)), // Pass the selected country
    );
  }
}
