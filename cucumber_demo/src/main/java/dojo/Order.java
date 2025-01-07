package main.java.dojo;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private String Owner;
    private String Target;
    private List<String> Cocktails;
    private String Message;

    public Order() {
        Cocktails = new ArrayList<>();
    }

    public void declareOwner(String owner) {
        Owner = owner;
    }

    public void declareTarget(String target) {
        Target = target;
    }

    public List<String> getCocktails() {
        return Cocktails;
    }

    public void addCocktail(String cocktail) {
        Cocktails.add(cocktail);
    }

    public void addMessage(String message) {
        this.Message = message;
    }

    public String getTicket() {
        return String.format("From %s to %s: %s", Owner, Target, Message);
    }
}
