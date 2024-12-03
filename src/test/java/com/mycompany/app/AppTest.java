package com.mycompany.app;

import org.testng.Assert;
import org.testng.annotations.Test;

public class AppTest {

    @Test
    public void testAppConstructor() {
        App app1 = new App();
        App app2 = new App();
        Assert.assertEquals(app1.getMessage(), app2.getMessage());
    }

    @Test
    public void testAppMessage() {
        App app = new App();
        Assert.assertEquals("Hello World!", app.getMessage());
    }
}
