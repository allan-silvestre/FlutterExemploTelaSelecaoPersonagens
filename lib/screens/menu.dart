import 'package:flutter/material.dart';
import 'package:tictactoez/screens/selecionarPersonagem.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   iconTheme: IconThemeData(
      //       color: Colors.white
      //   ),
      //   title: Text('Tic Tac Toe Z'),
      //   centerTitle: true,
      //   titleTextStyle: (TextStyle(
      //     fontSize: 14,
      //     fontWeight: FontWeight.bold,
      //   )),
      //   elevation: 0,
      // ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SelecionarPersonagem(),
                        ));
                      },
                      child: Text('Player vs Player'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        elevation: 5,
                        primary: Colors.transparent.withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Player vs CPU'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        elevation: 5,
                        primary: Colors.transparent.withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}