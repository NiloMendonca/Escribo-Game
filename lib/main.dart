import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cobras e Escadas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class CobrasEscadas {
  int _posicao;

  CobrasEscadas(this._posicao);
  int get posicao => _posicao;

  void setPosicao(int posicao, List<Fluxo> listaFluxo, jogador){
    if(posicao > 100){
      posicao = 100 - (posicao - 100);
    }
    this._posicao = posicao;
    switch(this._posicao){
      case 2:
        this._posicao = 38;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 7:
        this._posicao = 14;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 8:
        this._posicao = 31;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 15:
        this._posicao = 26;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 16:
        this._posicao = 6;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 21:
        this._posicao = 42;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 28:
        this._posicao = 84;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 36:
        this._posicao = 44;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 46:
        this._posicao = 25;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 49:
        this._posicao = 11;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 51:
        this._posicao = 67;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 62:
        this._posicao = 19;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 64:
        this._posicao = 60;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 71:
        this._posicao = 91;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 74:
        this._posicao = 53;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 78:
        this._posicao = 98;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 87:
        this._posicao = 94;
        listaFluxo.add(Fluxo(0, 'O Jogador ${jogador} parou na casa ${posicao} com escada! Avançará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 89:
        this._posicao = 68;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 92:
        this._posicao = 88;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 95:
        this._posicao = 75;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 99:
        this._posicao = 80;
        listaFluxo.add(Fluxo(0, 'Ops! O Jogador ${jogador} parou na casa ${posicao} com cobra! Retornará até a casa ${this._posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
      case 100:
        this._posicao = 100;
        listaFluxo.add(Fluxo(0, 'Jogador ${jogador} Venceu!', 3));
        break;
      default:
        listaFluxo.add(Fluxo(0, 'Parabéns! O Jogador ${jogador} avançou para a casa ${posicao}', listaFluxo[listaFluxo.length-1].proxJogador));
        break;
    }
  }

  int jogar(int dado1, int dado2){
    return dado1+dado2;
  }
}

class Fluxo {
  int _jogador;
  String _dialogo;
  int _proxJogador;

  Fluxo(this._jogador, this._dialogo, this._proxJogador);
  int get jogador => _jogador;
  String get dialogo => _dialogo;
  int get proxJogador => _proxJogador;
}

class _MyHomePageState extends State<MyHomePage> {
  CobrasEscadas jogador1 = new CobrasEscadas(0);
  CobrasEscadas jogador2 = new CobrasEscadas(0);

  var listaFluxo = [
    new Fluxo(0, 'Bem vindo ao Cobras e Escadas!', 0),
    new Fluxo(0, 'É a vez do Jogador 1', 0),
    new Fluxo(0, "Digite 's' para jogar o dado", 1)
  ];

  final controllerTextoUsuario = TextEditingController();

  ScrollController controllerScroll = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cobras e Escadas'),
      ),
      body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(5.0)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Chip(
                    label: Text(
                      "Jogador 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                      ),
                    ),
                    backgroundColor: Colors.red,
                  ),
                  Text(
                    jogador1.posicao.toString(),
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Chip(
                    label: Text(
                      "Jogador 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  Text(
                    jogador2.posicao.toString(),
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 300,
            height: 300,
            child: Stack(
              children: [
                Image.asset('assets/images/tabuleiro.jpeg', width: 300, height: 300),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Text("Search"),
                ),
              ],
            ),
          ),
          Container(
                height: 250,
                child: Column(children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        controller: controllerScroll,
                        shrinkWrap: true,
                        itemCount: listaFluxo.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BubbleChat(listaFluxo[index].jogador, listaFluxo[index].dialogo);
                        }
                    ),
                  )
                ]
              )
          ),
          TextField(
                controller: controllerTextoUsuario,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      int jogadorAtual = listaFluxo[listaFluxo.length-1].proxJogador;
                      Random random = new Random();
                      int dado1 = random.nextInt(5) + 1;
                      int dado2 = random.nextInt(5) + 1;
                      int proxJogador;
                      if(jogadorAtual == 1 && dado1 == dado2){
                        proxJogador = 1;
                      }
                      else if(jogadorAtual == 1 && dado1 != dado2){
                        proxJogador = 2;
                      }
                      else if(jogadorAtual == 2 && dado1 == dado2){
                        proxJogador = 2;
                      }
                      else{
                        proxJogador = 1;
                      }
                      setState(() {
                        listaFluxo.add(Fluxo(jogadorAtual, controllerTextoUsuario.text, proxJogador));
                        if(controllerTextoUsuario.text != 's'){
                          listaFluxo.add(Fluxo(0, 'Opção inválida selecionada', jogadorAtual));
                          listaFluxo.add(Fluxo(0, 'É a vez do Jogador ${jogadorAtual}', jogadorAtual));
                          listaFluxo.add(Fluxo(0, "Digite 's' para jogar o dado", jogadorAtual));
                        }
                        else if(listaFluxo[listaFluxo.length-1].proxJogador == 3){
                          listaFluxo.add(Fluxo(0, 'O jogo acabou!', 3));
                        }
                        else {
                          listaFluxo.add(Fluxo(0, 'Dado 1: ${dado1}', proxJogador));
                          listaFluxo.add(Fluxo(0, 'Dado 2: ${dado2}', proxJogador));
                          if(dado1 == dado2){
                            listaFluxo.add(Fluxo(0, 'Você tirou valores iguais nos dados!', proxJogador));
                          }
                          if(jogadorAtual == 1){
                            jogador1.setPosicao(jogador1.posicao + jogador1.jogar(dado1, dado2), listaFluxo, 1);
                          }
                          else{
                            jogador2.setPosicao(jogador2.posicao + jogador2.jogar(dado1, dado2), listaFluxo, 2);
                          }

                          if(listaFluxo[listaFluxo.length-1].proxJogador != 3) {
                            listaFluxo.add(Fluxo(
                                0, 'É a vez do Jogador ${proxJogador}',
                                proxJogador));
                            listaFluxo.add(Fluxo(
                                0, "Digite 's' para jogar o dado",
                                proxJogador));
                          }
                        }
                        controllerTextoUsuario.text = '';
                        Timer(Duration(seconds: 1), () =>
                          controllerScroll.animateTo(
                            controllerScroll.position.maxScrollExtent,
                            curve: Curves.easeOut,
                            duration: const Duration(milliseconds: 300),
                          )
                        );
                      });
                    },
                  ),
              )
          ),
        ],
      ),
    ),
      ),
    );
  }

  bool getPaddingJogador(int jogador){
   if(jogador > 0)
     return true;

   return false;
  }

  getColorJogador(jogador){
    switch(jogador){
      case 0:
        return Colors.grey[300];
      case 1:
        return Colors.red;
      case 2:
        return Colors.green;
    }
  }

  BubbleChat(jogador, dialogo) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        getPaddingJogador(jogador) ? 64.0 : 16.0,
        4,
        getPaddingJogador(jogador) ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: getPaddingJogador(jogador) ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: getColorJogador(jogador),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              dialogo,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: getPaddingJogador(jogador) ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
