package defaultpackage;

import javax.swing.JFrame;

public class Finestra extends JFrame{
    public void finestra() {
        this.setTitle("Il mio Game");
        this.setSize(800, 600);
        this.setUndecorated(true);
        this.setExtendedState(JFrame.MAXIMIZED_BOTH);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
