package defaultpackage;

public class Cliente {
    private String nome;
    private int numArticoli;
    private int cassaPreferita;

    //costruttore
    public Cliente(String nome, int numArticoli, int cassaPreferita) {
        this.nome = nome;
        this.numArticoli = numArticoli;
        this.cassaPreferita = cassaPreferita;
    }

    //getter
    public String getNome() {
        return nome;
    }

    public int getNumArticoli() {
        return numArticoli;
    }

    public int getCassaPreferita() {
        return cassaPreferita;
    }
    
    @Override
    public String toString() {
        return "Cliente{" + "nome=" + nome + ", numArticoli=" + numArticoli + ", cassaPreferita=" + cassaPreferita + '}';
    }
    
    
    
    
    
}
