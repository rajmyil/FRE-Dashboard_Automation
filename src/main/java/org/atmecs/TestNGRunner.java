package org.atmecs;

import org.testng.TestNG;

import java.util.ArrayList;
import java.util.List;

public class TestNGRunner {
    public static void main(String[] args) {
        TestNG runner = new TestNG();
        List<String> suitefiles = new ArrayList<String>();
        suitefiles.add("C:\\Users\\myil.s\\IdeaProjects\\FREDashboardAutomation\\testng.xml");
        runner.setTestSuites(suitefiles);
        runner.run();
    }
}
