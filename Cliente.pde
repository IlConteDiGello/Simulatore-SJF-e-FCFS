class Cliente implements Comparable<Cliente> {
  private String nome;
  public int numArticoli;
  private int cassaPreferita;
  public PImage sprite = loadImage("stickman.jpg");

  //costruttore
  Cliente(String nome, int numArticoli, int cassaPreferita) {
    this.nome = nome;
    this.numArticoli = numArticoli;
    this.cassaPreferita = cassaPreferita;
    this.sprite.resize((int)(sprite.width * 0.15), (int)(sprite.height * 0.15));
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

  //metodi
  @Override
    String toString() {
    return "Cliente: " + "nome = " + nome + ", numArticoli = " + numArticoli + ", cassaPreferita = " + cassaPreferita;
  }

  @Override
    public int compareTo(Cliente other) {
    return this.numArticoli - other.getNumArticoli();
  }
}
