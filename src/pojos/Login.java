package pojos;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the LOGIN database table.
 * 
 */
@Entity
public class Login implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	private String password;

	//bi-directional many-to-one association to Theatre
	@ManyToOne(fetch=FetchType.LAZY)
  	@JoinColumn(name="THEATREID")
	private Theatre theatre;

    public Login() {
    }

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Theatre getTheatre() {
		return this.theatre;
	}

	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	
}