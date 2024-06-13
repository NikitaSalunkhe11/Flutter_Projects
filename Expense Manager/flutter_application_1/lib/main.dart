import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

// Define a model to hold user data
class UserData extends ChangeNotifier {
  String name = '';

  void setName(String newName) {
    name = newName;
    notifyListeners(); // Notify listeners to update widgets
  }

  // Load user data from SharedPreferences
  Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('userName') ?? '';
    notifyListeners(); // Update listeners after loading data
  }

  // Save user data to SharedPreferences
  Future<void> saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', name);
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserData()..loadUserData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Data Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data Demo'),
      ),
      body: Consumer<UserData>(
        builder: (context, userData, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (newValue) {
                    userData.setName(newValue);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Hello, ${userData.name}',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await userData.saveUserData();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('User data saved')),
                    );
                  },  
                  child: Text('Save'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
