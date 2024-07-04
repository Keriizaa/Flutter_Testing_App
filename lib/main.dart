import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state_management/provider_example.dart';
import 'state_management/riverpod_example.dart';
import 'state_management/bloc_cubit_example.dart';
import 'state_management/set_state_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
      routes: {
        '/provider': (context) => const ProviderExample(),
        '/riverpod': (context) => ProviderScope(child: const RiverpodExample()),
        '/bloc_cubit': (context) => const BlocCubitExample(),
        '/set_state': (context) => const SetStateExample(),
        // Add routes for other sections here as needed
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Section 1: State Management
              const Text(
                'State Management',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/provider');
                },
                child: const Text('Provider Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/riverpod');
                },
                child: const Text('Riverpod Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bloc_cubit');
                },
                child: const Text('Bloc/Cubit Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/set_state');
                },
                child: const Text('SetState Example'),
              ),

              // Section 2: Layouts and UI Design
              const SizedBox(height: 20),
              const Text(
                'Layouts and UI Design',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Advanced Layout
                },
                child: const Text('Advanced Layout'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Responsive Design
                },
                child: const Text('Responsive Design'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Animation
                },
                child: const Text('Animation'),
              ),

              // Section 3: Networking and APIs
              const SizedBox(height: 20),
              const Text(
                'Networking and APIs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for HTTP Requests
                },
                child: const Text('HTTP Requests'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for JSON Serialization
                },
                child: const Text('JSON Serialization'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Websockets
                },
                child: const Text('Websockets'),
              ),

              // Section 4: Local Storage and Databases
              const SizedBox(height: 20),
              const Text(
                'Local Storage and Databases',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Shared Preferences
                },
                child: const Text('Shared Preferences'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for SQLite
                },
                child: const Text('SQLite'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Hive
                },
                child: const Text('Hive'),
              ),

              // Section 5: Asynchronous Programming
              const SizedBox(height: 20),
              const Text(
                'Asynchronous Programming',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Asynchronous Programming
                },
                child: const Text('Asynchronous'),
              ),

              // Section 6: Security
              const SizedBox(height: 20),
              const Text(
                'Security',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Authentication
                },
                child: const Text('Authentication'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Data Encryption
                },
                child: const Text('Data Encryption'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add navigation for Network Security
                },
                child: const Text('Network Security'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
