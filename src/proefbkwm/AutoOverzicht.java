package proefbkwm;

import java.util.ArrayList;
/**
 *
 * @author Levi
 */
public class AutoOverzicht {
    public final ArrayList<Auto> autolijst = new ArrayList<>();
    
    public AutoOverzicht() {
        Auto auto1 =new Auto("audi", "a1", 23000, "140 pk","1,4 liter","1095 kg.","212 km/h","rood");
        Auto auto2 =new Auto("audi", "a3", 33000,"105 pk","1,2 liter","1155 kg.","203 km/h","rood");
        Auto auto3 =new Auto("audi", "r8", 123000,"525 pk","5,2 liter","1595 kg.","316 km/h","rood");
        Auto auto4 =new Auto("ferrari", "enzo", 200000,"660 pk","6,0 liter","1365 kg.","350 km/h","rood");
        Auto auto5 =new Auto("ferrari", "testarossa", 209000,"390 pk","4,9 liter","1505 kg.","290 km/h","rood");
        Auto auto6 =new Auto("fiat", "500", 15495,"100 pk","1,4 liter","905 kg.","182 km/h","wit");
        Auto auto7 =new Auto("fiat", "bravo", 22950,"140 pk","1,4 liter","1250 kg.","204 km/h","zilver");
        Auto auto8 =new Auto("fiat", "punto", 16000,"95 pk","1,4 liter","1035 kg.","178 km/h","blauw");
        Auto auto9 =new Auto("ford", "fiesta", 14000,"100 pk","1,0 liter","954 kg.","180 km/h","wit");
        Auto auto10 =new Auto("ford", "focus", 25000,"100 pk","1,6 liter","1155 kg.","172 km/h","wit");
        Auto auto11 =new Auto("ford", "mondeo", 28000,"115 pk","1,6 liter","1405 kg.","190 km/h","zilver");
        Auto auto12 =new Auto("maserati", "ghibli", 120000,"401 pk","6,0 liter","1810 kg.","285 km/h","zilver");
        Auto auto13 =new Auto("maserati", "quattroporte", 160000,"530 pk","8,0 liter","1900 kg.","307 km/h","koper");
        Auto auto14 =new Auto("opel", "astra", 22000,"140 pk","1,4 liter","1337 kg.","201 km/h","blauw");
        Auto auto15 =new Auto("opel", "corsa", 14000,"83 pk","1,2 liter","1060 kg.","172 km/h","groen");
        Auto auto16 =new Auto("opel", "mokka", 11000,"140 pk","1,4 liter","1294 kg.","193 km/h","wit");
        Auto auto17 =new Auto("porsche", "cayenne", 85000,"340 pk","4,5 liter","2245 kg.","242 km/h","wit");
        Auto auto18 =new Auto("porsche", "panamera", 120000,"440 pk","4,8 liter","1895 kg.","288 km/h","zwart");
        Auto auto19 =new Auto("porsche", "911", 126000,"355 pk","3,8 liter","1475 kg","288 km/h","rood");
        autolijst. add(auto1);
        autolijst. add(auto2);
        autolijst. add(auto3);
        autolijst. add(auto4);
        autolijst. add(auto5);
        autolijst. add(auto6);
        autolijst. add(auto7);
        autolijst. add(auto8);
        autolijst. add(auto9);
        autolijst. add(auto10);
        autolijst. add(auto11);
        autolijst. add(auto12);
        autolijst. add(auto13);
        autolijst. add(auto14);
        autolijst. add(auto15);
        autolijst. add(auto16);
        autolijst. add(auto17);
        autolijst. add(auto18);
        autolijst. add(auto19);
    }
     public ArrayList<Auto> getAutolijst() {
        return autolijst;
    }
}
