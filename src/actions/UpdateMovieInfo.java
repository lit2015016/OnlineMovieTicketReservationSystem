package actions;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import pojos.Movie;
import pojos.Rate;
import pojos.Show;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;

public class UpdateMovieInfo extends ActionSupport implements ServletRequestAware{

	int MILLIS_IN_DAY = 1000 * 60 * 60 * 24;
	MovieSelectAction msv;
	Moviedao md;
	ServerAction sa;
	ArrayList<String> sysdates;
	String screenno;
	long screenid;
	long theatreid;
	String showDate;
	String remainseat="A1/A2/A3/A4/A5/A6/A7/A8/A9/A10/A11/A12/A13/A14/A15/A16/B1/B2/B3/B4/B5/B6/B7/B8/B9/B10/B11/B12/B13/B14/B15/B16/C1/C2/C3/C4/C5/C6/C7/C8/C9/C10/C11/C12/C13/C14/C15/C16/D1/D2/D3/D4/D5/D6/D7/D8/D9/D10/D11/D12/D13/D14/D15/D16/E1/E2/E3/E4/E5/E6/E7/E8/E9/E10/E11/E12/E13/E14/E15/E16/F1/F2/F3/F4/F5/F6/F7/F8/F9/F10/F11/F12/F13/F14/F15/F16/G1/G2/G3/G4/G5/G6/G7/G8/G9/G10/G11/G12/G13/G14/G15/G16/H1/H2/H3/H4/H5/H6/H7/H8/H9/H10/H11/H12/H13/H14/H15/H16/I1/I2/I3/I4/I5/I6/I7/I8/I9/I10/I11/I12/I13/I14/I15/I16/J1/J2/J3/J4/J5/J6/J7/J8/J9/J10/J11/J12/J13/J14/J15/J16/";

HttpServletRequest request;


	@Override
public void setServletRequest(HttpServletRequest request) {
	this.request=request;
	}




	String selectedmovie1,selectedmovie2,selectedmovie3,selectedmovie4,selectedmovie5,selectedmovie6,selectedmovie7,selectedmovie8;
	Movie selmov1,selmov2,selmov3,selmov4,selmov5,selmov6,selmov7,selmov8;
	String selectedrate1,selectedrate2,selectedrate3,selectedrate4,selectedrate5,selectedrate6,selectedrate7,selectedrate8;
	long rate1,rate2,rate3,rate4,rate5,rate6,rate7,rate8;
	String time1,time2,time3,time4,time5,time6,time7,time8;
	
	public String getShowDate() {
		return showDate;
	}
	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}
	
	public void setSelectedmovie1(String selectedmovie1) {
		this.selectedmovie1 = selectedmovie1;
			selmov1=md.getmovieidbyname(selectedmovie1);
		System.out.println("in setter of selectedmovie"+selmov1.getActor());
	}
	public String getSelectedmovie2() {
		return selectedmovie2;
	}


	public void setSelectedmovie2(String selectedmovie2) {
		selmov2=md.getmovieidbyname(selectedmovie2);
		this.selectedmovie2 = selectedmovie2;
	}


	public String getSelectedmovie3() {
		return selectedmovie3;
	}


	public void setSelectedmovie3(String selectedmovie3) {
		selmov3=md.getmovieidbyname(selectedmovie3);
		this.selectedmovie3 = selectedmovie3;
	}


	public String getSelectedmovie4() {
		return selectedmovie4;
	}


	public void setSelectedmovie4(String selectedmovie4) {
		selmov4=md.getmovieidbyname(selectedmovie4);
		this.selectedmovie4 = selectedmovie4;
	}


	public String getSelectedmovie5() {
		return selectedmovie5;
	}


	public void setSelectedmovie5(String selectedmovie5) {
		selmov5=md.getmovieidbyname(selectedmovie5);
		this.selectedmovie5 = selectedmovie5;
	}


	public String getSelectedmovie6() {
		return selectedmovie6;
	}


	public void setSelectedmovie6(String selectedmovie6) {
		selmov6=md.getmovieidbyname(selectedmovie6);
		this.selectedmovie6 = selectedmovie6;
	}


	public String getSelectedmovie7() {
		return selectedmovie7;
	}


	public void setSelectedmovie7(String selectedmovie7) {
		selmov7=md.getmovieidbyname(selectedmovie7);
		this.selectedmovie7 = selectedmovie7;
	}


	public String getSelectedmovie8() {
		return selectedmovie8;
	}


	public void setSelectedmovie8(String selectedmovie8) {
		selmov8=md.getmovieidbyname(selectedmovie8);
		this.selectedmovie8 = selectedmovie8;
	}


	public String getSelectedrate1() {
		return selectedrate1;
	}


	public void setSelectedrate1(String selectedrate1) {
		this.selectedrate1 = selectedrate1;
		rate1=Long.valueOf(selectedrate1.split("Rate:")[0]);
		System.out.println(rate1);
	}


	public String getSelectedrate2() {
		return selectedrate2;
	}


	public void setSelectedrate2(String selectedrate2) {
		rate2=Long.valueOf(selectedrate2.split("Rate:")[0]);
		this.selectedrate2 = selectedrate2;
	}


	public String getSelectedrate3() {
		return selectedrate3;
	}


	public void setSelectedrate3(String selectedrate3) {
		rate3=Long.valueOf(selectedrate3.split("Rate:")[0]);
		this.selectedrate3 = selectedrate3;
	}


	public String getSelectedrate4() {
		return selectedrate4;
	}


	public void setSelectedrate4(String selectedrate4) {
		rate4=Long.valueOf(selectedrate4.split("Rate:")[0]);
		this.selectedrate4 = selectedrate4;
	}


	public String getSelectedrate5() {
		return selectedrate5;
	}


	public void setSelectedrate5(String selectedrate5) {
		rate5=Long.valueOf(selectedrate5.split("Rate:")[0]);
		this.selectedrate5 = selectedrate5;
	}


	public String getSelectedrate6() {
		return selectedrate6;
	}


	public void setSelectedrate6(String selectedrate6) {
		rate6=Long.valueOf(selectedrate6.split("Rate:")[0]);
		this.selectedrate6 = selectedrate6;
	}


	public String getSelectedrate7() {
		return selectedrate7;
	}


	public void setSelectedrate7(String selectedrate7) {
		rate7=Long.valueOf(selectedrate7.split("Rate:")[0]);
		this.selectedrate7 = selectedrate7;
	}


	public String getSelectedrate8() {
		return selectedrate8;
	}


	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public String getTime3() {
		return time3;
	}
	public void setTime3(String time3) {
		this.time3 = time3;
	}
	public String getTime4() {
		return time4;
	}
	public void setTime4(String time4) {
		this.time4 = time4;
	}
	public String getTime5() {
		return time5;
	}
	public void setTime5(String time5) {
		this.time5 = time5;
	}
	public String getTime6() {
		return time6;
	}
	public void setTime6(String time6) {
		this.time6 = time6;
	}
	public String getTime7() {
		return time7;
	}
	public void setTime7(String time7) {
		this.time7 = time7;
	}
	public String getTime8() {
		return time8;
	}
	public void setTime8(String time8) {
		this.time8 = time8;
		System.out.println(time8);
	}
	public void setSelectedrate8(String selectedrate8) {
		rate8=Long.valueOf(selectedrate8.split("Rate:")[0]);
		this.selectedrate8 = selectedrate8;
	}


	public String getSelectedmovie1() {
		return selectedmovie1;
	}


	

	List<Movie> movies=null;
	List<Rate> type=null;
	
	

	public UpdateMovieInfo() {
	System.out.println("in ctor of updatemovie info ");
	msv=new MovieSelectAction();
	md=new Moviedao();
	sa=new ServerAction();
	
	}


	public List<Movie> getMovies() {
		
		return msv.getMovies();
	}


	public void setMovies(List<Movie> movies) {
		this.movies = movies;
	}
	
	
	
	public List<Rate> getType() {
		type=md.getratetypes();
		System.out.println("Rate id:"+type);
		return type;
	}


	public void setType(List<Rate> type) {
		this.type = type;
	}

	public ArrayList<String> getSysdates() throws ParseException {
		sysdates=new ArrayList<String>();
		for(int i=7;i<14;i++)
		{
		Date date = new Date();
		SimpleDateFormat formatter= 
			  new SimpleDateFormat("dd-MMM-yyyy");
			  String dateNow = formatter.format(date.getTime()+MILLIS_IN_DAY*i);
		
		System.out.println("JAVA DATE:"+dateNow);
		sysdates.add(dateNow);
		
		}
		System.out.println("Sysdates are"+sysdates);
		return sysdates;
	}


	public void setSysdates(ArrayList<String> sysdates) {
		this.sysdates = sysdates;
	}

	public String getScreenno() {
		System.out.println("Screen NO:="+screenno);
		return screenno;
	}


	public void setScreenno(String screenno) {
		System.out.println("in setter of screen no");
		this.screenno = screenno;
		screenid=Long.valueOf(this.screenno);
	System.out.println("screenid is"+ screenid);
	HttpSession session=request.getSession();
	  session.setAttribute("screenid",screenid);     
	setTheatreid();
	}

	public long getScreenid() {
		return screenid;
	}
	public long getTheatreid() {
		return theatreid;
	}


	public void setTheatreid() {
		HttpSession session=request.getSession();
	    theatreid=(Long)session.getAttribute("theatreid");

		System.out.println("in setter of theatreid");
        System.out.println(theatreid);
	}
	
	public String UpdateMovieinfo()
	{
		Show sh;
		HttpSession session=request.getSession();
	    theatreid=(Long)session.getAttribute("theatreid");
        screenid=(Long)session.getAttribute("screenid");
		System.out.println("in method updatemovieinfo");
		System.out.println("Showdate"+showDate);
		System.out.println("rateid"+rate1+" movieid "+selmov1.getMovieid() +"theatreid "+theatreid+"screenid "+screenid+"time1"+ time1);
		md.insertShow(theatreid,screenid,selmov1,showDate,remainseat,time1,rate1);
		md.insertShow(theatreid,screenid,selmov2,showDate,remainseat,time2,rate2);
		md.insertShow(theatreid,screenid,selmov3,showDate,remainseat,time3,rate3);
		md.insertShow(theatreid,screenid,selmov4,showDate,remainseat,time4,rate4);
		md.insertShow(theatreid,screenid,selmov5,showDate,remainseat,time5,rate5);
		md.insertShow(theatreid,screenid,selmov6,showDate,remainseat,time6,rate6);
		md.insertShow(theatreid,screenid,selmov7,showDate,remainseat,time7,rate7);
		md.insertShow(theatreid,screenid,selmov8,showDate,remainseat,time8,rate8);
		
				return SUCCESS;
		
	}
	
	public String logout(){
		HttpSession session=request.getSession();
		session.invalidate();
		System.out.println("Session Invalidated");
		return SUCCESS;
		
	}
	

	
	
}
