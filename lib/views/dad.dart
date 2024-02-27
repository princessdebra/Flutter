import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/views/custombutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  final String username = "John Doe"; // Replace with the actual username

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color.fromARGB(255, 244, 108, 154),
        foregroundColor: appWhite,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi $username', // Display the greeting with the username
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 244, 108, 154),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NotepadCard(title: 'Personal Notes', count: 10),
                NotepadCard(title: 'Work Notes', count: 5),
                //color: Color.fromARGB(255, 244, 108, 154), 
              ],
            ),
            // Add more NotepadCard widgets as needed
             
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Color.fromARGB(255, 244, 108, 154)),
                  onPressed: () {
                    // Handle home navigation
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Color.fromARGB(255, 244, 108, 154)),
                  onPressed: () {
                    // Handle notifications navigation
                  },
                ),
                IconButton(
                  icon: Icon(Icons.check, color: Color.fromARGB(255, 244, 108, 154)),
                  onPressed: () {
                    // Handle tasks navigation
                  },
                ),
                IconButton(
                  icon: Icon(Icons.lightbulb, color: Color.fromARGB(255, 244, 108, 154) ),
                  onPressed: () {
                    // Handle tips navigation
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Color.fromARGB(255, 244, 108, 154)),
                  onPressed: () {
                    // Handle trash navigation
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings, color:  Color.fromARGB(255, 244, 108, 154)),
                  onPressed: () {
                    // Handle settings navigation
                  },
                ),
              ],
            ),
            //Divider(color: Colors.brown),
            Spacer(), // Add a spacer to push the Add button to the bottom
            ElevatedButton(
              onPressed: () {
                // Handle adding notes (you can navigate to a new screen or show a dialog)
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

class NotepadCard extends StatelessWidget {
  final String title;
  final int count;

  const NotepadCard({
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
    
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Total Notes: $count',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              
              ElevatedButton(
                onPressed: () {
                  // Handle navigation to the notepad screen
                },
                child: Text('Open Notepad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
