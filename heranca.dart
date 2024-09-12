// Criação da Classe Pai
class Data {
  // Criação de Atributos
  // tipo nome_atributo = valor_inicialização
  // obrigatório inicializar um valor
  int dia = 1;
  int mes = 1;
  int ano = 1980;

  // Criação do Metodo (sem retorno e sem parametro)
  // tem a função de apresentar a data no print ja formatada
  // um metodo void ou sem nada na frente, retorna nada soemente execcuta o código
  // por isso é preciso o print para apresentar uma saida, porque só executa o código
  obterDataFormatada() {
    print('$dia/$mes/$ano');
  }

  // Criação de um novo metodo (com retorno string e sem parametro)
  String obterDataFormatadaString() {
    return "$dia/$mes/$ano";
  }
}

// Criação da Classe Filha que irá herdar os atributos e metodos da classe Pai
class DataHora extends Data {
  // O termo "extends"  recupera as caracteristicas da classe pai
  // Que já vem implicitamente sem precisar escrever novamente
  // os atributos e metodos da classe pai
  int hora = 0;
  int minuto = 0;
  int segundo = 0;

  // Criação do Metodo da classe Filha (sem retorno)
  void obterDataHoraFormatada() {
    // Comon observado, o metodo já recuperou os atributos da classe pai
    print("$dia/$mes/$ano $hora:$minuto:$segundo");
  }

  // Criação do 2° Metodo da Classe filha (com retorno)
  String obterDataHoraFormatadaComString() {
    // Como observado foram rcuperados atributos da classe pai
    return "$dia/$mes/$ano $hora:$minuto:$segundo";
  }
}

// Criação do Main (para instanciar a classe)
main() {
  // Intanciando Classe Pai
  var dataAtivacao = new Data();

  // Setando novos valores para os atributos
  dataAtivacao.dia = 10;
  dataAtivacao.mes = 04;
  dataAtivacao.ano = 2024;

  // Chamada do 1° Metodo da Classe Pai
  // o metodo não solicita parametros, por isso soemente usa o nome dele
  dataAtivacao.obterDataFormatada();

  // Chamada do 2° Metodo da Classe Pai
  // Atribuição do retorno do metodo em uma variavel
  String retornoMetodo = dataAtivacao.obterDataFormatadaString();

  // Saída do resultado da utilização do metodo
  print("Imprimindo resultado retornado pelo 2° metodo: $retornoMetodo");

  // Intanciando Classe Filha
  DataHora dataHoraLeitura = DataHora();

  // Setando novos valores para os Atributos da Classe Pai
  // Através do objeto da classe filha
  dataHoraLeitura.dia = 05;
  dataHoraLeitura.mes = 09;
  dataHoraLeitura.ano = 2024;
  dataHoraLeitura.hora = 9;
  dataHoraLeitura.minuto = 45;
  dataHoraLeitura.segundo = 20;

  // Chamada do 2° Metodo da Classe Pai
  String saida1 = dataAtivacao.obterDataFormatadaString();
  // Chamada do 2° Metodo da Classe Filha
  String saida2 = dataHoraLeitura.obterDataHoraFormatadaComString();

  // Saída do resultado da utilização dos metodos com retorno
  print("Data de Ativação do Sensor: $saida1");
  print("Data e Hora de leitura do Sensor: $saida2");
}

/*Classe super é a denominação para classe pai (classe que está cedendo seus parâmetros) 
Subclasse é a denominação para classe filha (classe que está herdando os parâmetros). */