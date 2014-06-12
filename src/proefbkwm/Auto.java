package proefbkwm;

import java.text.DecimalFormatSymbols;
import java.text.DecimalFormat;

/**
 *
 * @author Levi
 */
public class Auto {
    String merk, model, pk, verbruik, gewicht, snelheid, kleur;
    int prijs;
     
    public Auto(String merk, String model, int prijs, String pk, String verbruik, String gewicht, String snelheid, String kleur) {
        this.merk = merk;
        this.model = model;
        this.prijs = prijs;
        this.pk = pk;
        this.verbruik = verbruik;
        this.gewicht = gewicht;
        this.snelheid = snelheid;
        this.kleur = kleur;
    }
    public String getMerk() {
        return merk;
    }
    public String getModel() {
        return model;
    }
    public int getPrijs() {
        return prijs;
    }
    public String getPk() {
        return pk;
    }
    public String getVerbruik() {
        return verbruik;
    }
    public String getGewicht() {
        return gewicht;
    }
    public String getSnelheid() {
        return snelheid;
    }
    public String getKleur() {
        return kleur;
    }
    public String getPlaatje() {
        String pre = "<img src=\"image/";
        String post = "\"width=\"175px\" height=\"auto\" align=\"middle\">";
        if (model.equals("a1")) {
            return pre + "audi_a1.jpg" + post;
        } else if (model.equals("a3")) {
            return pre + "audi_a3.jpg" + post;
        } else if (model.equals("r8")) {
            return pre + "audi_r8.jpg" + post;
        } else if (model.equals("enzo")) {
            return pre + "ferrari_enzo.jpg" + post;
        } else if (model.equals("testarossa")) {
            return pre + "ferrari_testarossa.jpg" + post;
        } else if (model.equals("500")) {
            return pre + "fiat_500.jpg" + post;
        } else if (model.equals("bravo")) {
            return pre + "fiat_bravo.jpg" + post;
        } else if (model.equals("punto")) {
            return pre + "fiat_punto.jpg" + post;
        } else if (model.equals("fiesta")) {
            return pre + "ford_fiesta.jpg" + post;
        } else if (model.equals("focus")) {
            return pre + "ford_focus.jpg" + post;
        } else if (model.equals("mondeo")) {
            return pre + "ford_mondeo.jpg" + post;
        } else if (model.equals("ghibli")) {
            return pre + "maserati_ghibli.jpg" + post;
        } else if (model.equals("quattroporte")) {
            return pre + "maserati_quattroporte.jpg" + post;
        } else if (model.equals("astra")) {
            return pre + "opel_astra.jpg" + post;
        } else if (model.equals("corsa")) {
            return pre + "opel_corsa.jpg" + post;
        } else if (model.equals("mokka")) {
            return pre + "opel_mokka.jpg" + post;
        } else if (model.equals("cayenne")) {
            return pre + "porsche_cayenne.jpg" + post;
        } else if (model.equals("panamera")) {
            return pre + "porsche_panamera.jpg" + post;
        } else if (model.equals("911")) {
            return pre + "porsche_911.jpg" + post;
        } else {
            return "";
        }
    }
    public String getPrijsFormat() {
        DecimalFormatSymbols dfs = new DecimalFormatSymbols();
        dfs.setDecimalSeparator(',');
        dfs.setGroupingSeparator('.');
    	DecimalFormat df = new DecimalFormat("#,##0.-",dfs);
    	double prijs = (double) this.getPrijs();
    	String sPrijs = df.format(prijs);
    	return sPrijs;
    }
    
}
