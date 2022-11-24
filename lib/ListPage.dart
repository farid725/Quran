import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class ListPage extends StatelessWidget {
  int index;//0
   ListPage( {Key? key, required this.index}) : super(key: key);
   

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(quran.getSurahName(index + 1)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/d.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: quran.getVerseCount(index+1),
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(
                  quran.getVerse(index+1, i + 1, verseEndSymbol: true),
                  textAlign: TextAlign.right,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
