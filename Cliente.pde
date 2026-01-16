
class Cliente {//implements Comparable<Cliente> {
  String nome;
  int numArticoli;
  int cassaPreferita;

  //costruttore
  Cliente(String nome, int numArticoli, int cassaPreferita) {
    this.nome = nome;
    this.numArticoli = numArticoli;
    this.cassaPreferita = cassaPreferita;
  }

  //getter
  String getNome() {
    return nome;
  }

  int getNumArticoli() {
    return numArticoli;
  }

  int getCassaPreferita() {
    return cassaPreferita;
  }

  @Override
    String toString() {
    return "Cliente: " + "nome = " + nome + ", numArticoli = " + numArticoli + ", cassaPreferita = " + cassaPreferita;
  }
}

void drawClienti(){
  //for each, scorre ogni elemento dell'arraylist
  for (Cliente c : clienti) {
    println(c.nome);
}
}
