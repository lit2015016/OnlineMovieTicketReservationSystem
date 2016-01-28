package actions;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import pojos.Movie;
import pojos.Rate;
import pojos.Show;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;

public class CurrentMovieInfo extends  ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Moviedao md;
	UpdateMovieInfo up=new UpdateMovieInfo();;
	long theatreid,screenno;
	ArrayList<Show> showArr;
	List<Movie> movies;
	List<Rate> rates;
	String showid;
    String time;
    String selectedmovie;
    String ratetype;
    Movie selectmovie;
    long selectrate;
    
 
	public String getSelectedmovie() {
		
		return selectedmovie;
	}
	public void setSelectedmovie(String selectedmovie) {
		this.selectedmovie = selectedmovie;
		selectmovie=md.getmovieidbyname(selectedmovie);
		System.out.println("in setter of selected  movie");
	}
	public String getRatetype() {
		
		return ratetype;
	}
	public void setRatetype(String ratetype) {
		this.ratetype = ratetype;
		selectrate=Long.valueOf(ratetype.split("Rate:")[0]);
	}
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
		System.out.println("Time setter"+time);
	}
	public ArrayList<Show> getShowArr() {
	 
		movies=up.getMovies();	
		rates=up.getType();
		return showArr;
	}
	
 	List<Show> showdates;
	String selecteddates;
	
	HttpServletRequest request;
	
	
	public CurrentMovieInfo() {
	  System.out.println("in ctor of currentmovie info");
		md =new Moviedao();
	  System.out.println("exiting ctor of currentmovie info");
		
	}
	public String currMovieInfo()
	{
		
		return SUCCESS;
	} 
	
	public String currMovieModify() throws ParseException
	{
		DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(selecteddates);
		
		
		Date date1=formatter.parse(selecteddates);
		  HttpSession session=request.getSession();
		    theatreid=(Long)session.getAttribute("theatreid");
	        screenno=(Long)session.getAttribute("screenid");
		   	
		  System.out.println("screen no"+screenno+"theatreid"+theatreid);
	
		showArr=md.currentShows(date1,theatreid,screenno);
		System.out.println("this is showinfo"+showArr.toString());
		return SUCCESS;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
	this.request=request;
		
	}
	
	public long getScreenno() {
		return screenno;
	}

	public List<Show> getShowdates() {
	System.out.println("in getter of showdates ");
	HttpSession session=request.getSession();
    theatreid=(Long)session.getAttribute("theatreid");
    screenno=(Long)session.getAttribute("screenid");
   	showdates=md.showinfo(theatreid,screenno);
	System.out.println("Showdates are "+showdates);
		return showdates;
	}

	

	public String getSelecteddates() {
		return selecteddates;
	}
	public void setSelecteddates(String selecteddates) {
		System.out.println("in setter of selected dates and date is"+selecteddates);
		this.selecteddates = selecteddates;
	}
	
	public List<Movie> getMovies() {
		movies=up.getMovies();
		return movies;
	}
	public List<Rate> getRates() {
		rates=up.getType();
		return rates;
	}
	
	public String currMovieModified(){
		long id;
		System.out.println("MD is"+md);
		
		
		System.out.println("moviesare"+selectmovie.getMovieid()+"ratesare"+selectrate);
		System.out.println("ABC");
		System.out.println("Show ID"+showid);
		id= md.updateshows(showid,selectmovie.getMovieid(),selectrate,time);
		System.out.println(id);
		return SUCCESS;
		
	}
	public String getShowid() {
		return showid;
	}


	public void setShowid(String showid) {
		this.showid = showid;
		System.out.println("Show id setter"+showid);
	}
}
