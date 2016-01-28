package dao;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.*;

import utils.HiberUtils;


public class Moviedao {

	
	public Moviedao() {
		System.out.println("in ctor of dao");
	}

	public List<Movie> MoviesList() {
		
		List<Movie> mv=null;
		Session hibsession=null;
		Transaction tx=null;
		System.out.println("in Movies list");
		try{
			System.out.println("IN try");
		hibsession=HiberUtils.getSession();
		System.out.println("session started");
		tx= hibsession.beginTransaction();
		System.out.println("in getMoviesList");
		String hql="select name from Movie";
		mv=hibsession.createQuery(hql).list();
		
		System.out.println("Movies are"+mv.toString());
		//.println("your id is"+));
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
		return mv;
		
		
	}

	public String validate(String username,String password) {
		
		Session hibsession=null;
		Transaction tx=null;
		Login lg = null;
	
		String SUCCESS="SUCCESS",ERROR=null;
		System.out.println("in validate");
		try{
			System.out.println("IN try");
		hibsession=HiberUtils.getSession();
		System.out.println("session started");
		tx= hibsession.beginTransaction();
		System.out.println("in validate user name="+username+"password="+password);
		String hql="from Login lg where lg.username=:user and lg.password=:password";
		lg=(Login)hibsession.createQuery(hql).setParameter("user", username).setParameter("password",password).uniqueResult();
		System.out.println("Login Details:"+lg.toString());
		
		
		//.println("your id is"+));
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
		
		if(lg!=null)		
		{
			System.out.println("Login success");
		return SUCCESS;
		}
		else
			return ERROR;
	}

	public long insertmovie(Movie mv) {
		
		long id=0;
		Session hibsession=null;
		Transaction tx=null;
		System.out.println("in insert movie1");
		try{
		hibsession=HiberUtils.getSession();
		System.out.println("in insert movie2");
		tx= hibsession.beginTransaction();
		System.out.println("in insert movie3");
		
		id=(Long) hibsession.save(mv);
		//.println("your id is"+));
		tx.commit();
		
		
	
		}
		catch(Exception e)
		{
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

	public List<Theatre> getCityList() {
		
		List<Theatre> th=null;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		String hql="select Distinct location from Theatre";
		th=hibsession.createQuery(hql).list();
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
		return th;
	}

	public List<Show> getDates(String selectedmovie) {
		List<Show> dates=null;
		Session hibsession=null;
		Transaction tx=null;
		try{
			System.out.println("SELECTED MOVIE IS:="+selectedmovie);
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		String hql="select DISTINCT s.showdate from Show s where movieid=(select movieid from Movie where name=:selectedmovie) and s.showdate>sysdate-1 and s.showdate<sysdate+7";
		dates=hibsession.createQuery(hql).setParameter("selectedmovie", selectedmovie).list();
		System.out.println("DATES ARE:="+dates);
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
		return dates;
	}

	public List<Rate> getratetypes() {
		
		List<Rate> rt=null;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		String hql="from Rate";
		rt=hibsession.createQuery(hql).list();
		System.out.println("rate id"+rt.toString());
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
		return rt;
	}

	public long gettheatreID(String username,String password) {
		Session hibsession=null;
		Transaction tx=null;
		Login theatreid = new Login();
	
		try{
			System.out.println("IN try");
		hibsession=HiberUtils.getSession();
		System.out.println("session started");
		tx= hibsession.beginTransaction();
		String hql="from Login lg where lg.username=:user";
		theatreid= (Login) hibsession.createQuery(hql).setParameter("user", username).uniqueResult();
		System.out.println("TheatreID"+theatreid.toString());
			System.out.println((theatreid.getTheatre()).getName()+(theatreid.getTheatre()).getLocation());
	
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
		
		
		return (theatreid.getTheatre()).getTheatreid();
	}

	public Movie getmovieidbyname(String selectedmovie1) {
		Movie selmov=null;
		Session hibsession=null;
		Transaction tx=null;
		try{
			System.out.println("SELECTED MOVIE IS:="+selectedmovie1);
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		String hql="from Movie where name=:selectedmovie";
		selmov=(Movie)hibsession.createQuery(hql).setParameter("selectedmovie", selectedmovie1).uniqueResult();
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
		return selmov;
	}
	
	public String insertShow(long theatreid,long screenid,Movie movieid,String showdate,String remainingseat,String time,long rateid)
	{
		long id=0;
		Session hibsession=null;
		Transaction tx=null;
		System.out.println("in InSERT SHOW");
		try{
		hibsession=HiberUtils.getSession();
		System.out.println("in InSERT SHOW");
		tx= hibsession.beginTransaction();
		System.out.println("in InSERT SHOW");
		 System.out.println("Show Date is:"+showdate);
		DateFormat formatter= new SimpleDateFormat("dd-MMM-yyyy");
			  Date date1=formatter.parse(showdate);
			 
		
		System.out.println("Remaining SEAT"+remainingseat+"Screen ID="+BigDecimal.valueOf(screenid)+"Date ="+date1+"Time="+time+"MovieID="+movieid+"Rate="+(Rate)hibsession.get(Rate.class, rateid)+"Theatre ID="+(Theatre)hibsession.get(Theatre.class, theatreid));	  
	    Show sh=new Show(remainingseat,BigDecimal.valueOf(screenid), date1, time, movieid,(Rate)hibsession.get(Rate.class, rateid),(Theatre)hibsession.get(Theatre.class, theatreid));
		System.out.println("Show POJO"+sh.toString());
	    System.out.println(hibsession.save(sh));
		//.println("your id is"+));
		tx.commit();
		
		
	
		}
		catch(Exception e)
		{
		System.out.println(e);
		tx.rollback();
		
		}
		finally
		{
			if (hibsession != null)
				hibsession.close();
		}
		return "success";
	}

	public List<Show> showinfo(long theatreid, long screenid) {
		List<Show> showdates = null;
		Session hibsession=null;
		Transaction tx=null;
		try{
			System.out.println("SELECTED Theatre IS:="+theatreid+"Selected Screen id="+screenid);
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		String hql="select Distinct showdate from Show where theatreid=:theatreid and screenid=:screenid";
		showdates=(List<Show>)hibsession.createQuery(hql).setParameter("theatreid",theatreid).setParameter("screenid",BigDecimal.valueOf(screenid)).list();
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
		
		
		return showdates;
		
	}

	public ArrayList<Show> currentShows(Date selecteddates,long theatreid,long screenno) {
	
		ArrayList<Show> sh = null;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		
		String hql="from Show where theatreid=:theatreid and screenid=:screenid and showdate=:selecteddates";
		sh=(ArrayList<Show>) hibsession.createQuery(hql).setParameter("theatreid", theatreid).setParameter("screenid",BigDecimal.valueOf(screenno)).setParameter("selecteddates", selecteddates).list();
		System.out.println("rate id"+sh.toString());
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
		return sh;
	}

	public long updateshows(String showid, long movieid, long rateid, String time) {
		
		long id = 0;
		Session hibsession=null;
		Transaction tx=null;
		try{
		hibsession=HiberUtils.getSession();
		tx= hibsession.beginTransaction();
		System.out.println("in current movie updating showid"+showid+"movieid"+movieid+"rateid"+rateid+"Time"+time);
		String hql="update Show set movieid=:movieid,rateid=:rateid,time=:time where showid=:showid";
		id= (long)hibsession.createQuery(hql).setParameter("movieid",movieid).setParameter("rateid",rateid).setParameter("time", time).setParameter("showid", showid).executeUpdate();
	System.out.println("No of rows updated="+id);
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

	
	
}
