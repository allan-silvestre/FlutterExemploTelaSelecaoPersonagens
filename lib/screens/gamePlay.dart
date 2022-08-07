import 'package:flutter/material.dart';

class GamePlay extends StatefulWidget {
  @override
  State<GamePlay> createState() => _GamePlayState();
}

class _GamePlayState extends State<GamePlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   iconTheme: IconThemeData(
      //       color: Colors.white
      //   ),
      //   title: Text('Selecionar Personagens'),
      //   centerTitle: true,
      //   titleTextStyle: (TextStyle(
      //     fontSize: 14,
      //     fontWeight: FontWeight.bold,
      //   )),
      //   elevation: 0,
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
          child: Expanded(
              child: Column(
                children: [
                  Container(

                  )
                ]
              )),
        ),
      ),
    );
  }
}
