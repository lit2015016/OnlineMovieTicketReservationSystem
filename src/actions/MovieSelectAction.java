package actions;

import java.util.List;

import pojos.Movie;
import pojos.Show;
import pojos.Theatre;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;

public class MovieSelectAction extends ActionSupport{

	Moviedao dao;
	String selectedmovie;
	String selectedcity;
	

	List<Movie> movies=null;
	List<Theatre> city=null;
	List<Show> dates=null;
 
	
	public List<Movie> getMovies() {
		System.out.println("IN GET MOVIES");
		movies=dao.MoviesList();
		
		return movies;
	}

	public List<Theatre> getCity() {
		city=dao.getCityList();
		return city;
	}

	public List<Show> getDates() {
		
		return dates;
	}

	public void setDates(List<Show> dates) {
		this.dates = dates;
	}

//	public void setCity(List<Theatre> city) {
//		this.city = city;
//	}

	public void setMovies(List<Movie> movies) {
		
		this.movies = movies;
	}

	
	public String getSelectedcity() {
		return selectedcity;
	}

	public void setSelectedcity(String selectedcity) {
		this.selectedcity = selectedcity;
	}

	public MovieSelectAction() {
		System.out.println("in ctor of movieaction");
		dao=new Moviedao();
	}
	
	public String displayMovies(){
		System.out.println("Success");
		return SUCCESS;
	}
	
	public String getSelectedmovie() {
		System.out.println("in getter Selected movie-"+selectedmovie);
		return selectedmovie;
	}

	public void setSelectedmovie(String selectedmovie) {
		this.selectedmovie = selectedmovie;
		System.out.println(" in setter Selected movie-"+selectedmovie);
		dates=dao.getDates(selectedmovie);
	}
	
	
}
