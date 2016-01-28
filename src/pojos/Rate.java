package pojos;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;


/**
 * The persistent class for the RATE database table.
 * 
 */
@Entity
public class Rate implements Serializable {
	@Override
	public String toString() {
		return rateid + "Rate:"+ "gold=" + gold + ", platinum="
				+ platinum + ", silver=" + silver;
	}

	private static final long serialVersionUID = 1L;

	@Id
	private long rateid;

	private BigDecimal gold;

	private BigDecimal platinum;

	private BigDecimal silver;

	//bi-directional many-to-one association to Show
//	@OneToMany(mappedBy="rate")
//	private Set<Show> shows;

    public Rate() {
    }

	public long getRateid() {
		return this.rateid;
	}

	public void setRateid(long rateid) {
		this.rateid = rateid;
	}

	public BigDecimal getGold() {
		return this.gold;
	}

	public void setGold(BigDecimal gold) {
		this.gold = gold;
	}

	public BigDecimal getPlatinum() {
		return this.platinum;
	}

	public void setPlatinum(BigDecimal platinum) {
		this.platinum = platinum;
	}

	public BigDecimal getSilver() {
		return this.silver;
	}

	public void setSilver(BigDecimal silver) {
		this.silver = silver;
	}

//	public Set<Show> getShows() {
//		return this.shows;
//	}
//
//	public void setShows(Set<Show> shows) {
//		this.shows = shows;
//	}
	
}