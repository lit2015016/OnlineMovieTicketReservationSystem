package pojos;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;


/**
 * The persistent class for the SHOW database table.
 * 
 */
@Entity
public class Show implements Serializable {
	@Override
	public String toString() {
		return "Show INFORMATION " +"SHOW ID"+showid+
				"ScreenID ="+screenid+"," +
				"ShowDate ="+showdate+"," +
				"Time ="+time+"," +
			    "Movie Name ="+movie.getName()+"," +
			    "Rate Type ="+rate+"," +
			    " Theatre =" + theatre.getName();
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String showid;

	



	public Show(String remainingseat, BigDecimal screenid,
			Date showdate, String time, Movie movie, Rate rate, Theatre theatre) {
		super();
		this.remainingseat = remainingseat;
		this.screenid = screenid;
		this.showdate = showdate;
		this.time = time;
		this.movie = movie;
		this.rate = rate;
		this.theatre = theatre;
		System.out.println("In ctor of show");
	}

	private String remainingseat;

	private BigDecimal screenid;

    @Temporal( TemporalType.DATE)
	private Date showdate;

	private String time;

	//bi-directional many-to-one association to Bookinfo
	@OneToMany(mappedBy="show")
	private Set<Bookinfo> bookinfos;

	//bi-directional many-to-one association to Movie
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="MOVIEID")
	private Movie movie;

	//bi-directional many-to-one association to Rate
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="RATEID")
	private Rate rate;

	//bi-directional many-to-one association to Theatre
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="THEATREID")
	private Theatre theatre;

    public Show() {
    }

	public String getShowid() {
		return this.showid;
	}

	public void setShowid(String showid) {
		this.showid = showid;
	}

	public String getRemainingseat() {
		return this.remainingseat;
	}

	public void setRemainingseat(String remainingseat) {
		this.remainingseat = remainingseat;
	}

	public BigDecimal getScreenid() {
		return this.screenid;
	}

	public void setScreenid(BigDecimal screenid) {
		this.screenid = screenid;
	}

	public Date getShowdate() {
		return this.showdate;
	}

	public void setShowdate(Date showdate) {
		this.showdate = showdate;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Set<Bookinfo> getBookinfos() {
		return this.bookinfos;
	}

	public void setBookinfos(Set<Bookinfo> bookinfos) {
		this.bookinfos = bookinfos;
	}
	
	public Movie getMovie() {
		return this.movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	
	public Rate getRate() {
		return this.rate;
	}

	public void setRate(Rate rate) {
		this.rate = rate;
	}
	
	public Theatre getTheatre() {
		return this.theatre;
	}

	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	
}