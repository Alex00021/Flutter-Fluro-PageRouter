import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("輸入閣下要搜尋", style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            ///
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black45,),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
