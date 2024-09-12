// Criação de uma Classe
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

// Criação do Main (para instanciar a classe)
main() {
  // O ato de chamar a classe é o instanciamento
  // quando se passa o valor por parametro na instancia o valor do atributo será esse
  // porém se não for passado valor nenhum será assumido o padrão definido na classe

  // Exemplo 1 - Intancia da Classe (data que o sensor começou a ler)
  // declara uma variavel que agora será chamado objeto
  // porque possui todas as propriedades da classe (que são acessadas usando um ponto)
  var dataAtivacao = new Data();

  // Setando novos valores para os atributos
  dataAtivacao.dia = 10;
  dataAtivacao.mes = 04;
  dataAtivacao.ano = 2024;

  // Saída dos atributos da classe do objeto 1 usando metodo
  // o metodo não solicita parametros, por isso soemente usa o nome dele
  dataAtivacao.obterDataFormatada();

  // Exemplo 2 - Utlização do 2° metodo
  // Atribuição do retorno do metodo em uma variavel
  String retornoMetodo = dataAtivacao.obterDataFormatadaString();

  // Saída do resultado da utilização do metodo
  print("Imprimindo resultado retornado pelo 2° metodo: $retornoMetodo");
}