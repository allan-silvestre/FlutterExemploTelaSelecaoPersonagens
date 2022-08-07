import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tictactoez/models/personagem.dart';
import 'package:tictactoez/screens/gamePlay.dart';

final List<Personagem> personagem = [];
final List<Personagem> personagemInteiro = [];
String getIndiceListView1 = '';
String getIndiceListView2 = '';
String getImagemP1 = "assets/images/c0.png";
String getImagemP2 = "assets/images/c1.png";
String p1 = 'PLAYER';
String p2 = 'CPU';
int _selectedP1 = 0;
int _selectedP2 = 1;

class SelecionarPersonagem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SelecionarPersonagemState();
  }
}

class SelecionarPersonagemState extends State<SelecionarPersonagem> {
  @override
  Widget build(BuildContext context) {
    CarregaPersonagensPerfil();
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.indigo,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(getImagemP1, fit: BoxFit.fill),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(getImagemP2, fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => GamePlay(),
                  // ));
                },
                child: Text('Continuar'),
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
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        //scrollDirection: Axis.horizontal,
                        itemCount: personagem.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            leading: SizedBox(
                              child: (Image.asset(personagem[index].imagem)),
                              width: 60,
                            ),
                            title: Text(
                              personagem[index].nomePersonagem,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(''),
                            selected: index == _selectedP1,
                            selectedTileColor: Colors.transparent.withOpacity(0.4),
                            selectedColor: Colors.transparent.withOpacity(0.4),
                            onTap: () {
                              setState(() {
                                _selectedP1 = index;
                                getImagemP1 = personagemInteiro[index].imagem;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        //scrollDirection: Axis.horizontal,
                        itemCount: personagem.length,
                        separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            leading: SizedBox(
                              child: (Image.asset(personagem[index].imagem)),
                              width: 60,
                            ),
                            title: Text(
                              personagem[index].nomePersonagem,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(''),
                            selected: index == _selectedP1,
                            selectedTileColor: Colors.transparent.withOpacity(0.4),
                            selectedColor: Colors.transparent.withOpacity(0.4),
                            onTap: () {
                              setState(() {
                                _selectedP2 = index;
                                getImagemP2 = personagemInteiro[index].imagem;
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void CarregaPersonagensPerfil() {
    personagem.clear();

    List nomePersonagem = [
      "Goku",
      "Goku SSJ",
      "Goku SSJ3",
      "Goku SSJ4",
      "Goku God",
      "Goku God SSJ",
      "Goku IS incompleto",
      "Goku IS completo",
      "Goku Black",
      "Vegeta",
      "Vegeta SSJ",
      "Vegeta Buu",
      "Vegeta God",
      "Vegeta God SSJ",
      "Kid Gohan",
      "Gohan",
      "Gohan(Cell)",
      "Curirin",
      "Freeza",
      "Gold Freeza",
      "Brolly",
      "Picolo",
      "Cell",
      "Gotenks",
      "Gotenks SSJ",
      "Gotenks SSJ 3",
      "Majin buu",
      "Super Buu",
      "Super buu(Gohan)",
      "Kid Buu",
      "Dabura",
      "Mestre Kame",
      "Bills",
      "Whis",
      "Hitto",
      "Jiren",
      "Vados",
      "N 17",
      "N 18",
      "Trunks",
      "Trunks SSJ",
    ];

    setState(() {
      for (int i = 0; i <= 40; i++) {
        personagem.add(
            Personagem(nomePersonagem[i].toString(), "assets/images/a$i.png"));
        personagemInteiro.add(
            Personagem(nomePersonagem[i].toString(), "assets/images/c$i.png"));
      }
    });
  }
}
