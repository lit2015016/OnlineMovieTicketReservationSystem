package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.hibernate.SessionFactory;

import utils.HiberUtils;

public class HiberListener implements ServletContextListener
{
	 private SessionFactory sf=null;
	@Override
	public void contextDestroyed(ServletContextEvent arg0) 
	{
			if(sf!=null)
			sf.close();
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) 
	{
		System.out.println("context initialized");
		sf=HiberUtils.getFactory();
		System.out.println("factory created");
	}

}
