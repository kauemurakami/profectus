import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/modules/landing/landing_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LandingPage extends GetView<LandingController> {
  static final style = TextStyle(
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  List<Container> a = [
    Container(
      color: Color(0xffFAAC58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/1.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Olá",
                style: style,
              ),
              Text(
                "Somos a Vitalis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Arraste para o lado e conheça \n nossa proposta!",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/mask.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sabemos que todos estão fazendo sua parte nesse delicado momento.",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Confiamos em você e agradecemos por isso.",
                  style: TextStyle(color: Colors.purple, fontSize: 24),
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 32,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Já que você está fazendo papel, agora vamos falar um pouco do nosso.',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 24),
                  )),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffFA5858),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/loved.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Nosso objetivo é trazer a normalidade às nossas vidas de forma mais rápida !",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Devolvendo a chance de compartilhar momentos com quem você ama, lado a lado.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Valorizando aquilo que o dinheiro não pode comprar, o tempo.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffDA81F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/interrog.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mas como?",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "A partir de uma base de dados governamental, juntamente com os dados que serão coletados pelo nosso app",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Com isso poderemos definir prioridades para cada cidade e, consequentemente, estados brasileiros.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xff58ACFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/lines.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Iremos definir uma logística para a distribuição das vacinas através desses parâmetros.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Distribuindo com eficiência e precisão em locais prioritários.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Isso significa poupar tempo na distribuição da vacina, salvando vidas, e ao mesmo tempo, poupando dinheiro dos cofres públicos, ajudando também na recuperação econômica.",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffF3F781),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/vacine.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Com a chegada rápida e precisa da vacina, ainda podemos poupar milhares de vidas.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "E mesmo com a descoberta de várias potenciais vácinas, o vírus não irá parar até que todos estejam imunizados.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "E sabemos que muitas pessoas do grupo de risco, ainda não contrariam o vírus, essas devem ter prioridade na imunização.",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LiquidSwipe(pages: a));
  }
}
