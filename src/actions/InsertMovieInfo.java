package actions;

import java.math.BigDecimal;

import pojos.Movie;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;

public class InsertMovieInfo extends ActionSupport{

	String actor,actress,director,imgfile,name_of_movie;
	public String getImgfile() {
		return imgfile;
	}


	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}


	long movieID;
	BigDecimal rated;
	Moviedao md;
	Movie mv;
	
	
	public String getActor() {
		return actor;
	}


	public void setActor(String actor) {
		this.actor = actor;
	}


	public String getActress() {
		return actress;
	}


	public void setActress(String actress) {
		this.actress = actress;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	


	public String getName_of_movie() {
		return name_of_movie;
	}


	public void setName_of_movie(String name_of_movie) {
		this.name_of_movie = name_of_movie;
	}


	public long getMovieID() {
		return movieID;
	}


	public void setMovieID(long movieID) {
		this.movieID = movieID;
	}


	


	public BigDecimal getRated() {
		return rated;
	}


	public void setRated(BigDecimal rated) {
		this.rated = rated;
	}


	public InsertMovieInfo() {
		System.out.println("in ctor of movie insert info");
		md=new Moviedao();
		
	}
	
	
	public String insertMovieInfo()
	{
		mv=new Movie(name_of_movie, actor, actress, director, movieID, rated, imgfile);
		System.out.println(mv.toString());
		System.out.println(name_of_movie+actor+actress+director+movieID+rated+imgfile);
		long id=md.insertmovie(mv);
		System.out.println("ID="+id);
		
	//	addActionMessage("Movie Info Inserted Successfully");	
		
		return SUCCESS;
	}
		
}
