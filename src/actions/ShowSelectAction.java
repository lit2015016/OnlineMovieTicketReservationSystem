package actions;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import pojos.Movie;
import pojos.Show;
import pojos.Theatre;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;
import dao.Userdao;

public class ShowSelectAction extends ActionSupport{

	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	Userdao ud;
	Moviedao md;
	ArrayList<Show> showList;
	
	public ArrayList<Show> getShowList() {
		return showList;
	}


	MovieSelectAction mvs;
	String selectedmovie;
	List<Movie> movies=null;
	List<Theatre> city=null;
	List<Show> dates=null;
   Movie selectmovie;
   String selecteddate;
   Date selDate;
   String selectedcity;
	
	



	public String getSelecteddate() {
	return selecteddate;
}



public void setSelecteddate(String selecteddate) throws ParseException {
	this.selecteddate = selecteddate;
	DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
	selDate=formatter.parse(selecteddate);
	System.out.println("IN the setter of show select action dates"+selDate);
}

	public List<Movie> getMovies() {
		System.out.println("IN GET MOVIES");
		movies=md.MoviesList();
		
		return movies;
	}
	
	

	public List<Theatre> getCity() {
		city=md.getCityList();
		return city;
	}

public List<Show> getDates() {
		
		return dates;
	}

	public void setDates(List<Show> dates) {
		this.dates = dates;
	}
	
	public String getSelectedmovie() {
		selectedmovie=mvs.getSelectedmovie();
		System.out.println(" in setter Selected movie-"+selectedmovie);
		selectmovie=md.getmovieidbyname(selectedmovie);
	    System.out.println("Selected Movie="+selectedmovie);
		System.out.println("in getter Selected movie-"+selectmovie.getName());
		
		return selectedmovie;
	}

	public void setSelectedmovie(String selectedmovie) {
		this.selectedmovie = selectedmovie;
		selectmovie=md.getmovieidbyname(selectedmovie);
		dates=md.getDates(selectedmovie);
		
	}
	
	public ShowSelectAction() {
	   System.out.println("In ctor of ShowSelectAction");
	   ud=new Userdao();
	   md=new Moviedao();
	   mvs=new MovieSelectAction();
	   
	}
	

	public String displaytheatre()
	{
		
	    showList=ud.theatretime(selectmovie,md.getDates(selectedmovie),selDate,selectedcity);
	    System.out.println("array list"+showList);
		return SUCCESS;
	}
	
	public String getSelectedcity() {
		System.out.println("in city getter"+selectedcity);
		return selectedcity;
	}



	public void setSelectedcity(String selectedcity) {
		System.out.println("setter city"+selectedcity);
		this.selectedcity = selectedcity;
	}
	
	
	
	
}
