package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.Bookinfo;
import pojos.Movie;
import pojos.Show;
import utils.HiberUtils;

public class Userdao {

	
	public Userdao() {
System.out.println("in ctor of user dao");
	}

	public ArrayList<Show> theatretime(Movie selectedmovie, List<Show> dates,Date selDate, String selectedcity) {
		System.out.println("in theatretime");
		ArrayList<Show> sh=new ArrayList<Show>();
		List<Show> sh1=null;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		System.out.println("transcatiob ");
		System.out.println("selected movie name"+selectedmovie.getName());
		System.out.println("seldate"+selDate);
		String hql="from Show where movieid=:selectedmovie and showdate=:dates and theatreid=any(select theatreid from Theatre where location=:selectedcity)";
		sh1= hibsession.createQuery(hql).setParameter("selectedmovie",selectedmovie.getMovieid()).setParameter("dates",selDate).setParameter("selectedcity", selectedcity).list();
		System.out.println("show list is"+sh1);
		sh.addAll(sh1);
		System.out.println("Array list is="+sh);
		tx.commit();
		}
		catch(Exception e)
		{
			System.out.println("Session not init");
		System.out.println(e);
		tx.rollback();
		
		}
		finally
		{
			if (hibsession != null)
				hibsession.close();
		}
		System.out.println("shows are"+sh.toString());
		return sh;
	}

	public Show showrate(String showid) {
	
		Show sh = null;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		System.out.println("transcatiob ");
		sh= (Show) hibsession.get(Show.class,showid);
		System.out.println("show list is"+sh.toString());
		
		tx.commit();
		}
		catch(Exception e)
		{
			System.out.println("Session not init");
		System.out.println(e);
		tx.rollback();
		
		}
		finally
		{
			if (hibsession != null)
				hibsession.close();
		}
		System.out.println("shows are"+sh.toString());
		
		
		return sh;
		
	}

	public int updateseats(String seats1, String showid) {

		int id=0;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		System.out.println("transcatiob ");
		String hql="update Show set remainingseat=:seats1 where showid=:showid";
		id= (int) hibsession.createQuery(hql).setParameter("seats1",seats1).setParameter("showid", showid).executeUpdate();
		tx.commit();
		}
		catch(Exception e)
		{
			System.out.println("Session not init");
		System.out.println(e);
		tx.rollback();
		
		}
		finally
		{
			if (hibsession != null)
				hibsession.close();
		}
				
		
		return id;
		
				
	}

	public void storebooking(Bookinfo bkf) {
		
		int x;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		System.out.println("transcatiob ");
		 hibsession.save(bkf);
		System.out.println("Record inserted into bookinfo");
	   		
		tx.commit();
		}
		catch(Exception e)
		{
			System.out.println("Session not init");
		System.out.println(e);
		tx.rollback();
		
		}
		finally
		{
			if (hibsession != null)
				hibsession.close();
		}
		
	}

	
	
}
