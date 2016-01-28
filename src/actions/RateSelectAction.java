package actions;

import java.math.BigDecimal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import pojos.Show;

import com.opensymphony.xwork2.ActionSupport;

import dao.Userdao;

public class RateSelectAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String showid;
    Userdao ud;
    Show sh,sh1;
	BigDecimal rategold,ratesilver,rateplatinum;
    long selrate;
	ArrayList<String> rates=new ArrayList<String>();
    ArrayList<String> seats=new ArrayList<String>();
	String quantity;
	String selectedrate;
	String rate;
	String remainingseat;
	String bookedseat;
	HttpServletRequest request;
	String[] seat;
	String seattype;
	String selectedquantity;
	String totalprice;
	OriginalNumToLetter obj;
	
	
	  public Show getSh1() {
		  HttpSession session=request.getSession();
		  sh1=(Show) session.getAttribute("sh"); 
		  
			return sh1;
		}
	
	public String getTotalprice() {
		double total=Double.valueOf(totalprice)+(Double.valueOf(selectedquantity)*5);
		System.out.println(Double.valueOf(selectedquantity));
		
		
		System.out.println("Total price:="+total);
		
		totalprice=String.valueOf(total);
		System.out.println("in words"+totalprice);
		return totalprice;
		
	}


	public void setTotalprice(String totalprice) {
		
		
		this.totalprice = totalprice;
	}


	public String getSelectedquantity() {
		return selectedquantity;
	}


	public void setSelectedquantity(String selectedquantity) {
		this.selectedquantity = selectedquantity;
	}

	public String getSeattype() {
		seattype=selectedrate.split("-")[0];
		System.out.println("TYPE-"+seattype);
		return seattype;
	}


	public void setSeattype(String seattype) {
		this.seattype = seattype;
		
		
	}


	public String getBookedseat() {
		return bookedseat;
	}


	public void setBookedseat(String bookedseat) {
		this.bookedseat = bookedseat;
	}


	public String getRemainingseat() {
		
		return remainingseat;
	}


	public String getQuantity() {
		
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public String getSelectedrate() {
		return selectedrate;
	}


	public void setSelectedrate(String selectedrate) {
		this.selectedrate = selectedrate;
		
		System.out.println("SelRate"+selectedrate);
	}


	public long getSelrate() {
		
		return selrate;
	}


	public void setShowid(String showid) {
		this.showid = showid;
		System.out.println("In setter of Rate select action showid="+showid);
	}
	
	
	public String displayrate(){
		
		
		sh=ud.showrate(showid);
		rategold=sh.getRate().getGold();
		ratesilver=sh.getRate().getSilver();
		rateplatinum=sh.getRate().getPlatinum();
		rate="Platinum-"+rateplatinum;
		System.out.println("rate"+rate);
		rates.add(rate);
		rate="Gold-"+rategold;
		rates.add(rate);
		rate="Silver-"+ratesilver;
		rates.add(rate);
		
		
		return SUCCESS;
		
	}
	public Show getSh() {
		sh=ud.showrate(showid);
		
		HttpSession session=request.getSession();
		  session.setAttribute("sh",sh); 
		  
		return sh;
	}


	

	public BigDecimal getRategold() {
		return rategold;
	}

	public BigDecimal getRatesilver() {
		return ratesilver;
	}

	public BigDecimal getRateplatinum() {
		return rateplatinum;
	}

	public String getShowid() {
		
		return showid;
	}
	
	
	public RateSelectAction() {
System.out.println("in the ctor of rate select action");
		ud=new Userdao();
		 obj=new OriginalNumToLetter();
	
	}
	public ArrayList<String> getRates() {
		return rates;
	}


	public void setRates(ArrayList<String> rates) {
		this.rates = rates;
		
		
	}
	
	public String seatselection()
	{
		HttpSession session=request.getSession();
		sh=(Show) session.getAttribute("sh");
		System.out.println("Show in seat selection="+sh.toString());
		remainingseat=sh.getRemainingseat();
		System.out.println(remainingseat);
		seat=remainingseat.split("/");
        for (String string : seat) {
			
		  seats.add(string);
		}
        
		
		
		System.out.println("Remaining Seats for showid="+sh.getShowid()+"are=="+seats);
		return SUCCESS;
		
	}


	public String[] getSeat() {
		return seat;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		
	}
	
	
	
	
}
