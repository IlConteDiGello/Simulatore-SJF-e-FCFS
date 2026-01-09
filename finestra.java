import javax.swing.JFrame;

public class finestra extends JFrame{
    public finestra() {
        this.setTitle("Il mio Game");
        this.setUndecorated(true);
        this.setExtendedState(JFrame.MAXIMIZED_BOTH);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
