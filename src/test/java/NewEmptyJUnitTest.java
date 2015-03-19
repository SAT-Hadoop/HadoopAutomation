/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import edu.iit.doa.DOA;
import edu.iit.model.User_Jobs;
import java.util.UUID;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author supramo
 */
public class NewEmptyJUnitTest {
    
    public NewEmptyJUnitTest() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test @Ignore
    public void hello() {
    
        DOA d = new DOA();
        User_Jobs userjob = new User_Jobs();
        userjob.setInputurl("saif6aab463-4a1a-45f8-ad5c-a807a44a8902");
        userjob.setOutputurl("sai16529426-61dd-4bbb-ae52-0cc2fc9c752b");
        userjob.setJobid(UUID.randomUUID().toString());
        userjob.setUserid("sai");
        userjob.setJobstatus("intial");
        d.addJob(userjob);
    }
}
