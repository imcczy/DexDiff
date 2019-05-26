package com.imcczy;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }

    @Test
    public void main() {
        AppHandler appHandler = new AppHandler(Paths.get("/Users/imcczy/Downloads/wechat/weixin700android1380.apk"),
                Paths.get("/Users/imcczy/Downloads/wechat/weixin703android1400.apk"));

//        appHandler.parseDex(Paths.get("/Users/imcczy/Downloads/wechat/weixin703android1400.apk"));
        appHandler.init();
        System.out.println("");

    }
}
