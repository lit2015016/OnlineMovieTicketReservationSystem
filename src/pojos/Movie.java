package pojos;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;


/**
 * The persistent class for the MOVIE database table.
 * 
 */
@Entity
public class Movie implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long movieid;

	private String actor;

	private String actress;

	private String director;

	private String logopath;

	private String name;

	private BigDecimal rated;

	//bi-directional many-to-one association to Show
//	@OneToMany(mappedBy="movie")
//	private Set<Show> shows;

    public Movie() {
    }

	public Movie(String name, String actor, String actress,
			String director, long movieID, BigDecimal rated, String logopath) {
		this.movieid = movieID;
		this.actor = actor;
		this.actress = actress;
		this.director = director;
		this.logopath = logopath;
		this.name = name;
		this.rated = rated;
	}

	

	public long getMovieid() {
		return this.movieid;
	}

	public void setMovieid(long movieid) {
		this.movieid = movieid;
	}

	public String getActor() {
		return this.actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getActress() {
		return this.actress;
	}

	public void setActress(String actress) {
		this.actress = actress;
	}

	public String getDirector() {
		return this.director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getLogopath() {
		return this.logopath;
	}

	public void setLogopath(String logopath) {
		this.logopath = logopath;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getRated() {
		return this.rated;
	}

	public void setRated(BigDecimal rated) {
		this.rated = rated;
	}
//
//	public Set<Show> getShows() {
//		return this.shows;
//	}
//
//	public void setShows(Set<Show> shows) {
//		this.shows = shows;
//	}
	
}