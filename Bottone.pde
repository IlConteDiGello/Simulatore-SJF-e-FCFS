class Bottone {
  int x;
  int y;
  int diametro;
  float raggio = diametro / 2.0;
  String testo;

  Bottone(int x, int y, int d, String t1) {
    this.x = x;
    this.y = y;
    this.diametro = d;
    this.raggio = d/2;
    this.testo = t1;
  }

  void display() {
    pushStyle();
    if (dist(mouseX, mouseY, x, y) < raggio) {
      //questa funziona (dist()) calcola la distanza tra dei punti applicando il teorema di pitagora, in questo caso
      //calcola la distanza tra la X, la Y del mouse e X ed Y del cerchio, restituisce la distanza e la si compara al raggio
      fill(100);
    } else fill(255);

    circle(x, y, diametro);

    fill(0);
    textAlign(CENTER, CENTER);
    textSize(25);
    text(testo, x, y);
    popStyle();
  }

  void click() {
    if (dist(mouseX, mouseY, x, y) < raggio) {
      if (tempoScansionamento == 1000) {
        tempoScansionamento = 500;
        println("velocita' 500");
        this.testo = "X2";
      } else if (tempoScansionamento == 500) {
        tempoScansionamento = 250;
        println("velocita' 250");
        this.testo = "X3";
      } else if (tempoScansionamento == 250) {
        tempoScansionamento = 125;
        println("velocita' 125");
        this.testo = "X4";
      } else if (tempoScansionamento == 125) {
        tempoScansionamento = 1000;
        println("velocita' 1000");
        this.testo = "X1";
      }
    }
  }
}
