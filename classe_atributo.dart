// Criação de uma Classe
class Data {
  // Criação de Atributos
  // tipo nome_atributo = valor_inicialização
  // obrigatório inicializar um valor
  int dia = 1;
  int mes = 1;
  int ano = 1980;
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

  // Saída dos atributos da classe do objeto 1
  print('Data de Ativação do Sensor: '
      '${dataAtivacao.dia}/${dataAtivacao.mes}/${dataAtivacao.ano}');

  // Exemplo 2 - Intancia da Classe (ultima vez que viu o sensor)
  // Uma classe pode ser instanciada varias vezes em diferentes objetos
  // outra sintaxe de inctanciar
  Data dataLeitura = Data();

  // Setando novos valores para os atributos
  dataLeitura.dia = 29;
  dataLeitura.mes = 08;
  dataLeitura.ano = 2024;

  // Saída dos atributos da classe do objeto 2
  print('Data de Leitura do Sensor: '
      '${dataLeitura.dia}/${dataLeitura.mes}/${dataLeitura.ano}');
}
