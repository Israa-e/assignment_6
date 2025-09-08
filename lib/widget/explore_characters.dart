import 'package:assigment_1/data/character_model.dart';
import 'package:flutter/material.dart';

class ExploreCharactersWidget extends StatelessWidget {
  final Character character;
  const ExploreCharactersWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(character.fullName),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(character.image),
                    SizedBox(height: 10),
                    Text("Full Name: ${character.fullName}"),
                    SizedBox(height: 5),
                    Text("Nickname: ${character.nickname}"),
                    SizedBox(height: 5),
                    Text("House: ${character.hogwartsHouse}"),
                    SizedBox(height: 10),
                    Text("Ancestry: ${character.interpretedBy}"),
                    SizedBox(height: 5),
                    Text("Date of Birth: ${character.birthdate}"),
                    SizedBox(height: 5),
                    Text(
                      "Children: ${character.children != null ? character.children!.join(', ') : 'No children'}",
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: ListTile(
        leading: Container(
          height: 300,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple.shade50,

            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(5),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(character.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(character.fullName),
        subtitle: Text(character.nickname),
      ),
    );
  }
}
