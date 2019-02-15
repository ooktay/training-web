package steps;

import com.snapbytes.snaptest.service.TestRunListener;

public class TestListener implements TestRunListener {
    @Override
    public void start() {
        // Initializing...
        System.out.println("En basta");
        // Initialization complete.
    }

    @Override
    public void stop() {
        // Finalizing...
        System.out.println("En sonda");
        // Finalized.
    }
}

