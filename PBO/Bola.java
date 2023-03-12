class Bola extends Lingkaran{
    private double luasbola;
    private double volumebola;
    
    public Bola(double tinggi){
        super(4);
    }
    
    public Bola(double tinggi, double jari){
        super(jari);
    }

    public double hitungLuasBola(){
        this.luasbola = 4 * Lingkaran.PI * super.r * super.r;
        return this.luasbola; 
    }

    public double hitungVolumeBola() {
        this.volumebola = (4/3) * Lingkaran.PI * super.r * super.r * super.r;
        return this.volumebola;
    }
}


