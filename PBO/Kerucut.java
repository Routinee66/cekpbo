class Kerucut extends Lingkaran{
    private double luaskerucut;
    private double volumekerucut;
    private double tinggi;
    private double miring;
    
    public Kerucut(double tinggi){
        super(4);
    }
    
    public Kerucut(double tinggi, double jari){
        super(jari);
    }

    public double hitungLuasKerucut(){
        // this.miring = Lingkaran.PI * super.r * super.r + Lingkaran.PI * super.r * this.miring;
        this.miring = Math.sqrt(super.r * super.r + this.miring * this.miring);
        this.luaskerucut = Lingkaran.PI * super.r * (super.r + this.miring);
        return this.luaskerucut; 
    }

    public double hitungVolumeKerucut() {
        this.volumekerucut = (1/3) * Lingkaran.PI * super.r * super.r * this.tinggi;
        return this.volumekerucut;
    }
}




//     luas=phi*jari*(jari+miring);
//     luas=num2str(luas);
//     volume=(1/3)*phi*jari*jari*tinggi;
//     volume=num2str(volume);