import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  int points = 0;

  void addPoint() {
    setState(() {
      points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),

            // Profile Image
            Center(
              child: Image.asset(
                'assets/profile.png',
                width: 125,
                height: 125,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 18),

            const Divider(
              color: Colors.black,
              thickness: 1,
            ),

            const SizedBox(height: 18),

            // Name
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Diluka',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 22),

            // Email
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Row(
              children: [
                Icon(
                  Icons.email,
                  size: 18,
                  color: Colors.black,
                ),
                SizedBox(width: 6),
                Text(
                  'diluka.w@nsbm.ac.lk',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 22),

            // Points
            const Text(
              'Points',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.black,
                ),
                const SizedBox(width: 6),
                Text(
                  '$points',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),

      // + Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: addPoint,
        child: const Icon(Icons.add),
      ),
    );
  }
}
