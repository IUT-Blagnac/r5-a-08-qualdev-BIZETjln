package test.java.dojo;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import static org.junit.Assert.*;
import java.util.List;

import main.java.dojo.*;

public class CocktailSteps {
    private Order order;

    @Given("{word} who wants to buy a drink")
    public void who_wants_to_buy_a_drink(String owner) {
        order = new Order();
        order.declareOwner(owner);
    }

    @When("an order is declared for {word}")
    public void an_order_is_declared_for(String target) {
        order.declareTarget(target);
    }

    @When("a message saying {string} is added")
    public void a_message_saying_is_added(String message) {
        order.addMessage(message);
    }

    @Then("there is {int} cocktails in the order")
    public void there_is_cocktail_in_the_order(int nbOrder) {
        List<String> cocktails =  order.getCocktails();
        assertEquals(nbOrder, cocktails.size());
    }

    @Then("the ticket must say {string}")
    public void the_ticket_must_say(String expected) {
        String actual = order.getTicket();
        assertEquals(expected, actual);
    }
    
}
