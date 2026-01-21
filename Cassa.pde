class Cassa {
  private int x;
  private int y;
  private Cliente[] fila;
  private final static int distanzaClienti = -100;
  private final static int xOffsetFila = -100;
  private final static int yOffsetFila = 0;
  private int indiceClienteServito = 0;
  private int tempo;
  public PImage immagineCassa;


  //costruttore
  Cassa (int x, int y, Cliente[] fila, PImage immagineCassa) {
    this.x = x;
    this.y = y;
    this.fila = fila;
    this. immagineCassa = immagineCassa;
  }


  //metodi

  //disegna la cassa
  public void draw() {
    image(immagineCassa, x, y);
  }

  //disegna la fila 
  public void drawFila() {
    int contatore = 0;

    for(int i = indiceClienteServito; i < fila.length; i++) {
      if (fila[i] != null) {
        image(fila[i].sprite, x + xOffsetFila + distanzaClienti*contatore, y + yOffsetFila);
        text (fila[i].getNome() + ": " + fila[i].getNumArticoli(), x + xOffsetFila + distanzaClienti*contatore, y + yOffsetFila + 1.2*fila[i].sprite.height);
      }
      contatore++;
    }
  }

  public void scansiona() {
    fila[indiceClienteServito].numArticoli--;
    tempo++;
    if (fila[indiceClienteServito].numArticoli <= 0) 
      indiceClienteServito++;
  }
  

}


