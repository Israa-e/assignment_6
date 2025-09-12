import 'dart:convert';

import 'package:assigment_1/widget/button_widget.dart';
import 'package:assigment_1/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  String notesKey = 'notes';
  Map<String,String> notes ={
    'Sample Note': 'This is a sample note. You can add, edit, and delete notes as you like.'
  };

SharedPreferences ? prefs;

TextEditingController titleController = TextEditingController();
TextEditingController contentController = TextEditingController();
@override
  void initState() {
    _loadNotes();
    super.initState();
  }
  _loadNotes() async {
    prefs = await SharedPreferences.getInstance();
        String? savedNotes = prefs?.getString(notesKey);
    if (savedNotes != null) {
      notes = Map<String,String>.from(json.decode(savedNotes));
      setState(() {});
    }
   
  }
  _saveNotes(notes) async {
    await prefs?.setString(notesKey, json.encode(notes));
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
         showModalBottomSheet(context: context,

          builder: (context){return Padding(
   padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 20,
          ),            child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Add Note', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          const SizedBox(height: 16,),
               Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),           
              TextFiledWidget(hintText: 'Enter your Titel', onChange: (value){}, controller: titleController,),
              const SizedBox(height: 16,),
                Text("Content", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),  
              const SizedBox(height: 10,),  
                            TextFiledWidget(hintText: 'Enter your Content', onChange: (value){}, controller: contentController,),
              const SizedBox(height: 16,),
                     ButtonWidget(text: 'Add', onTap: () {
            if (contentController.text.isEmpty || titleController.text.isEmpty) {
              return;
            }  
            setState(() {
              notes[titleController.text] = contentController.text;
              _saveNotes(notes);
            });
            Navigator.pop(context);
            titleController.clear();
            contentController.clear();
                     },),
              const SizedBox(height: 20,  )
          
                    ],),
          );});
        },
        child: const Icon(Icons.add),
      ),
      body:
          notes.isEmpty
              ? const Center(
                child: Text(
                  'No notes available',
                  style: TextStyle(fontSize: 16),
                ),
              )
              : InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView.builder(

                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                        String title = notes.keys.elementAt(index);
                  String content = notes.values.elementAt(index);
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child:ListTile(
                        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        subtitle: Text(content, style: TextStyle(fontSize: 16),),
                      trailing: IconButton(
                          icon: Icon(Icons.delete, color: Colors.red,),
                          onPressed: () {
                            setState(() {
                              notes.remove(title);
                              _saveNotes(notes);
                            });
                          },
                        ),
                      ),  
                    );
                  },
                ),
              ),
    );
  }
}
