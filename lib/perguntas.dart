class Questao{
  String? pergunta;
  List respostas = [];
  int? respCorreta;

  List<Questao> questoes = [];

  getQuestoes(){
    Questao pergunta1 = Questao();
    pergunta1.pergunta = "Quem foi a primeira pessoa a viajar no espaço?";
    pergunta1.respostas = ["Yuri Gagarin","Neil Armstrong","Buzz Aldrin"];
    pergunta1.respCorreta = 0;

    Questao pergunta2 = Questao();
    pergunta2.pergunta = "Quais são as fases da Lua?";
    pergunta2.respostas = ["Nova, cheia, minguante e lua de sangue","Nova, cheia e superlua","Nova, crescente, cheia e minguante"];
    pergunta2.respCorreta = 2;

    Questao pergunta3 = Questao();
    pergunta3.pergunta = "Qual o maior planeta do sistema solar?";
    pergunta3.respostas = ["Marte","Júpiter","Saturno"];
    pergunta3.respCorreta = 3;


    Questao pergunta4 = Questao();
    pergunta4.pergunta = "Qual o planeta mais próximo do Sol?";
    pergunta4.respostas = ["Júpiter","Netuno","Mercúrio"];
    pergunta4.respCorreta = 2;

    questoes.add(pergunta1);
    questoes.add(pergunta2);
    questoes.add(pergunta3);
    questoes.add(pergunta4);

    return questoes;
  }

}
