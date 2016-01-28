package actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.Moviedao;

public class ServerAction extends ActionSupport implements ServletRequestAware  {

	
	HttpServletRequest request;

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		}

	Moviedao md;
	String result;
	String username,password;
	long theatreID;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login(){
		
		return SUCCESS;
		
	}
	
	public String loginValidate()
	{


	
        System.out.println("in login validate");
		System.out.println("Username"+username+"password="+password);
		result=md.validate(username,password);
	if(result=="SUCCESS")
		{
			theatreID=md.gettheatreID(username,password);
		//	setTheatreID(getTheatreID());
			System.out.println("Theatre ID is"+theatreID);
		request.setAttribute("theatreid",theatreID);
		HttpSession session=request.getSession();
		session.setAttribute("theatreid",theatreID);
			return SUCCESS;
		}
		else
			return ERROR;
	
	}
	
	public long getTheatreID() {
		
		return theatreID;
	}

	public void setTheatreID(long theatreID) {
		this.theatreID = theatreID;
	}

	public ServerAction() {
		md=new Moviedao();
		System.out.println("in ctor of server action");
		}
}
