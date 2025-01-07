package hellocucumber;

import io.cucumber.java.en.*;

import org.junit.jupiter.api.Assertions.*;

public class StepDefinitions {

    String actualDay;
    String answer;

    @Given("an example scenario")
    public void anExampleScenario() {
    }

    @When("all step definitions are implemented")
    public void allStepDefinitionsAreImplemented() {
    }

    @Then("the scenario passes")
    public void theScenarioPasses() {
    }

    @Given("Ajourd'hui on est {string}")
    public void aujourdhui_on_est_dimanche(String actualday) {
        // Write code here that turns the phrase above into concrete actions
        actualDay = actualday;
    }
    @When("Est ce qu'on est vendredi")
    public void est_ce_qu_on_est_vendredi() {
        // Write code here that turns the phrase above into concrete actions
        answer = "vendredi".equals(actualDay) ? "TGIF" : "Nope";
    }
    @Then("La reponse doit etre {string}")
    public void la_reponse_doit_etre(String attendu) {
        // Write code here that turns the phrase above into concrete actions
        if(!attendu.equals(answer)){
            throw new AssertionError("la reponse attendu est " + attendu + " mais la reponse est " + answer);
        }
    }
}
