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
  double distanciaEsquerda = 10.0;
  double distanciaTopo = 270.0;

  CobrasEscadas(this._posicao);
  int get posicao => _posicao;

    double getDistanciaEsquerda() {
      return distanciaEsquerda;
    }
    double getDistanciaTopo() {
      return distanciaTopo;
    }
    void setDistanciaEsquerda(double distanciaEsquerda){
      this.distanciaEsquerda = distanciaEsquerda;
    }
    void setDistanciaTopo(double distanciaTopo){
      this.distanciaTopo = distanciaTopo;
    }

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
      atualizaPosicaoTopo(this._posicao);
      atualizaPosicaoEsquerda(this._posicao);
    }

    void atualizaPosicaoTopo(int posicao){
      if(posicao<11)
          setDistanciaTopo(270.0);
      else if(posicao<21)
          setDistanciaTopo(245.0);
      else if(posicao<31)
        setDistanciaTopo(217.0);
      else if(posicao<41)
        setDistanciaTopo(187.0);
      else if(posicao<51)
        setDistanciaTopo(157.0);
      else if(posicao<61)
        setDistanciaTopo(130.0);
      else if(posicao<71)
        setDistanciaTopo(102.0);
      else if(posicao<81)
        setDistanciaTopo(72.0);
      else if(posicao<91)
        setDistanciaTopo(42.0);
      else
        setDistanciaTopo(10.0);
    }

    void atualizaPosicaoEsquerda(int posicao){
      switch(posicao) {
        case 0:
        case 1:
        case 20:
        case 21:
        case 40:
        case 41:
        case 60:
        case 61:
        case 80:
        case 81:
        case 100:
          setDistanciaEsquerda(10.0);
          break;
        case 2:
        case 19:
        case 22:
        case 39:
        case 42:
        case 59:
        case 62:
        case 79:
        case 82:
        case 99:
          setDistanciaEsquerda(40.0);
          break;
        case 3:
        case 18:
        case 23:
        case 38:
        case 43:
        case 58:
        case 63:
        case 78:
        case 83:
        case 98:
          setDistanciaEsquerda(68.0);
          break;
        case 4:
        case 17:
        case 24:
        case 37:
        case 44:
        case 57:
        case 64:
        case 77:
        case 84:
        case 97:
          setDistanciaEsquerda(98.0);
          break;
        case 5:
        case 16:
        case 25:
        case 36:
        case 45:
        case 56:
        case 65:
        case 76:
        case 85:
        case 96:
          setDistanciaEsquerda(126.0);
          break;
        case 6:
        case 15:
        case 26:
        case 35:
        case 46:
        case 55:
        case 66:
        case 75:
        case 86:
        case 95:
          setDistanciaEsquerda(156.0);
          break;
        case 7:
        case 14:
        case 27:
        case 34:
        case 47:
        case 54:
        case 67:
        case 74:
        case 87:
        case 94:
          setDistanciaEsquerda(184.0);
          break;
        case 8:
        case 13:
        case 28:
        case 33:
        case 48:
        case 53:
        case 68:
        case 73:
        case 88:
        case 93:
          setDistanciaEsquerda(212.0);
          break;
        case 9:
        case 12:
        case 29:
        case 32:
        case 49:
        case 52:
        case 69:
        case 72:
        case 89:
        case 92:
          setDistanciaEsquerda(240.0);
          break;
        case 10:
        case 11:
        case 30:
        case 31:
        case 50:
        case 51:
        case 70:
        case 71:
        case 90:
        case 91:
          setDistanciaEsquerda(270.0);
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
    new Fluxo(0, "Digite 's' para jogar os dados", 1)
  ];

  final controllerTextoUsuario = TextEditingController();

  ScrollController controllerScroll = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cobras e Escadas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                jogador1 = new CobrasEscadas(0);
                jogador2 = new CobrasEscadas(0);
                listaFluxo = [
                  new Fluxo(0, 'Bem vindo ao Cobras e Escadas!', 0),
                  new Fluxo(0, 'É a vez do Jogador 1', 0),
                  new Fluxo(0, "Digite 's' para jogar os dados", 1)
                ];
              });
            },
          ),
        ],
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
                  top: jogador1.getDistanciaTopo(),
                  left: jogador1.getDistanciaEsquerda(),
                  child: Image.asset('assets/images/jogador1.png', width: 15, height: 15),
                ),
                Positioned(
                  top: jogador2.getDistanciaTopo() + 4.0,
                  left: jogador2.getDistanciaEsquerda() + 4.0,
                  child: Image.asset('assets/images/jogador2.png', width: 15, height: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8)
          ),
          Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 40.0,
                child: InputDecorator(
                  decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(0.0,15.0,0.0,0.0),
                      labelText: 'Diálogo',
                      border: OutlineInputBorder()
                  ),
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
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0.0,15.0,0.0,5.0),
              width: MediaQuery.of(context).size.width - 40.0,
              height: 70,
              child: TextField(
                controller: controllerTextoUsuario,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Comando",
                ),
              ),
          ),
          ElevatedButton(
                    child: const Text('Jogar'),
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
                          listaFluxo.add(Fluxo(0, "Digite 's' para jogar os dados", jogadorAtual));
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
                                0, "Digite 's' para jogar os dados",
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
      padding: EdgeInsets.fromLTRB(
        getPaddingJogador(jogador) ? 64.0 : 16.0,
        4,
        getPaddingJogador(jogador) ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        alignment: getPaddingJogador(jogador) ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
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
