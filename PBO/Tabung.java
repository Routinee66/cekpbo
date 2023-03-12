class Tabung extends Lingkaran{
    private double luastabung;
    private double volumetabung;
    private double tinggi = 5;
    
    public Tabung(double tinggi){
        super(4);
        this.tinggi = tinggi;
    }
    
    public Tabung(double tinggi, double jari){
        super(jari);
        this.tinggi = tinggi;
    }

    public double hitungLuasTabung(){
        this.luastabung = super.getLuasLingkaran() * this.tinggi;
        return this.luastabung; 
    }

    public double hitungVolumeTabung() {
        Lingkaran jj = new Lingkaran(4);
        this.volumetabung = Lingkaran.PI * jj.r * jj.r * this.tinggi;
        return this.volumetabung;
    }
}