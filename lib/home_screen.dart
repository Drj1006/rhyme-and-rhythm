import 'package:flutter/material.dart';
import 'rhyme_data.dart';
import 'rhyme_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rhyme and Rhythm",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: rhymes.length,
        itemBuilder: (context, index) {
          final rhyme = rhymes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
             /* leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  rhyme.imagePath,
                  width: 55,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),*/

              leading: Hero(
                tag: rhyme.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    rhyme.imagePath,
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              title: Text(
                rhyme.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Tap to read the rhyme",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RhymeScreen(rhyme: rhyme),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
