package pojos;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the BOOKINFO database table.
 * 
 */
@Entity
public class Bookinfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String bookingid;

	private String bookedseat;

	//bi-directional many-to-one association to Show
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="SHOWID")
	private Show show;

    public Bookinfo() {
    }

	

	public Bookinfo(String bookingid, String bookedseat, Show show) {
		super();
		this.bookingid = bookingid;
		this.bookedseat = bookedseat;
		this.show = show;
	}



	public String getBookingid() {
		return this.bookingid;
	}

	public void setBookingid(String bookingid) {
		this.bookingid = bookingid;
	}

	public String getBookedseat() {
		return this.bookedseat;
	}

	public void setBookedseat(String bookedseat) {
		this.bookedseat = bookedseat;
	}

	public Show getShow() {
		return this.show;
	}

	public void setShow(Show show) {
		this.show = show;
	}
	
}