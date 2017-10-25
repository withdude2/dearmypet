package dearpet;

import javax.inject.Inject;

import org.apache.log4j.Logger;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import net.dearmypet.webapp.dao.MemberDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class TestQuery {
	
	/*private static final Logger logger = (Logger) LoggerFactory.getLogger(TestQuery.class);*/
	
	@Inject
	private MemberDao dao;
	
	@Test
	public void test() {
		System.out.println("test:"+dao.selectMemberById("1"));
	}
	
}
