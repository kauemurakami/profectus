import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/modules/landing/landing_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LandingPage extends GetView<LandingController> {
  static final style = TextStyle(
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  List<Container> a = [
    Container(
      color: Color(0xffA9F5E1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_2.png',
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
                  color: Colors.grey[250],
                ),
              ),
              Text(
                "Arraste para o lado e conheça \n nossa proposta!",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.grey[250]),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xFFF5A9A9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_4.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Sabemos que todos estão fazendo sua parte nesse delicado momento.\n"
                  "Confiamos em você e agradecemos por isso.",
                  style: TextStyle(color: Colors.black, fontSize: 19,),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Confiamos em você e agradecemos por isso.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),*/
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 44,
              ),
              Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Já que você está fazendo papel, agora vamos falar um pouco do nosso.',
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  )),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.teal[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_5.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Nossa proposta é trazer a normalidade às nossas vidas de forma mais rápida!",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Devolvendo a liberdade de voltar a compartilhar momentos com quem você ama, "
                  "valorizando aquilo que o dinheiro não pode comprar, o tempo.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffa0a9c6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_7.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Mas como?",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "A partir de uma base de dados, esses coletados pelo nosso app, para mapear cada indivídiuo do Brasil.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "A outra, fontes seguras de pesquisas, governamentais, estudos sobre a disseminação do vírus e próximos surtos.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffD8D8D8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_6.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "A partir de dados coletados pelo app e por órgãos confiáveis.",
                  style: TextStyle(color: Colors.grey[250], fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Iremos definir uma logistica para as vacinas através desses parâmetros.",
                  style: TextStyle(color: Colors.grey[250], fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Distribuindo com eficiência e precisão em locais prioritários",
                  style: TextStyle(color: Colors.grey[250], fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Isso significa poupar tempo na distribuição da vacina e dinheiro dos cofres públicos.",
                  style: TextStyle(color: Colors.grey[250], fontSize: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xff89a9ad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imagens/imagem_8.png',
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
                  "Com a chegada rápida da vacina, podemos poupar milhares de vidas.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Muitas pessoas do grupo de risco ainda não foram contaminadas.",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Nosso objetivo é alcança-los com a vacina antes disso !",
                  style: TextStyle(color: Colors.black, fontSize: 19),
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
