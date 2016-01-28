package utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class HiberUtils 
{
	private static SessionFactory factory=null;
	static
	{ 
		System.out.println("in static block");
        factory=new AnnotationConfiguration().configure().buildSessionFactory();
	    System.out.println("Factory init");
	}
	public static SessionFactory getFactory()
	{

		return factory;
	
	}
	public static Session getSession()
	{
		
		return factory.openSession();
	
	}
}
