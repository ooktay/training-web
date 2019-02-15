package steps;

import com.snapbytes.snaptest.step.CommonSteps;
import cucumber.api.java.Before;
import cucumber.api.java.BeforeStep;

public class MySteps {

    private final CommonSteps commonSteps;

    public MySteps(CommonSteps commonSteps) {
        this.commonSteps = commonSteps;
    }

    @Before
    public void senaryoOncesi() {
        System.out.println("Baslarken");
    }

//    @BeforeStep
//    public void arada() {
//        commonSteps.waitForNSeconds(1);
//    }
}
