package test.java.dojo;

import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/main/resources"
)
public class RunCucumberTest {
}
