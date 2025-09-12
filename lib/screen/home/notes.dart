import 'package:assigment_1/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<String> notes = [
    'Sample Note 1',
    'Sample Note 2',
    'Sample Note 3',
    'Sample Note 4',
    'Sample Note 5',
    'Sample Note 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          print('Add Note');
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add Note'),
                content: TextFiledWidget(
                  hintText: 'Enter your note',
                  onChange: (value) {
                    // Handle note input change
                  },
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Save'),
                    onPressed: () {
                      // Save note logic here
                      setState(() {
                        notes.add('New Note ${notes.length + 1}');
                      });
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body:
          notes.isEmpty
              ? const Center(
                child: Text(
                  'No notes available. Click the + button to add a note.',
                  style: TextStyle(fontSize: 16),
                ),
              )
              : ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(notes[index]),
                  );
                },
              ),
    );
  }
}
