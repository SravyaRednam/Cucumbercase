package bTest;

import org.junit.runner.RunWith;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber .class)
@CucumberOptions(features="demo30Jan.feature",glue= {"stepReg"},tags= {"@FunctionalTest"},plugin="json:target/cucumber-report.json")
public class TestRun 
{
	
}
