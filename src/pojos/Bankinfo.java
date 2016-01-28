package pojos;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the BANKINFO database table.
 * 
 */
@Entity
public class Bankinfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String bankname;

	private BigDecimal discount;

    public Bankinfo() {
    }

	public String getBankname() {
		return this.bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public BigDecimal getDiscount() {
		return this.discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

}