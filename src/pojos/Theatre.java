package pojos;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;


/**
 * The persistent class for the THEATRE database table.
 * 
 */
@Entity
public class Theatre implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long theatreid;

	private String location;

	private String name;

	@Column(name="NO_OF_SCREENS")
	private BigDecimal noOfScreens;

	//bi-directional many-to-one association to Login
	@OneToMany(mappedBy="theatre")
	private Set<Login> logins;

	//bi-directional many-to-one association to Show
	@OneToMany(mappedBy="theatre")
	private Set<Show> shows;

    public Theatre() {
    }

	public long getTheatreid() {
		return this.theatreid;
	}

	public void setTheatreid(long theatreid) {
		this.theatreid = theatreid;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getNoOfScreens() {
		return this.noOfScreens;
	}

	public void setNoOfScreens(BigDecimal noOfScreens) {
		this.noOfScreens = noOfScreens;
	}

	public Set<Login> getLogins() {
		return this.logins;
	}

	public void setLogins(Set<Login> logins) {
		this.logins = logins;
	}
	
	public Set<Show> getShows() {
		return this.shows;
	}

	public void setShows(Set<Show> shows) {
		this.shows = shows;
	}
	
}