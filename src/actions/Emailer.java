package actions;

import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import pojos.Bookinfo;
import pojos.Show;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.NEW;

import dao.Userdao;

public class Emailer extends ActionSupport implements ServletRequestAware{

   String from="cdaccinemax@gmail.com";
   String password="cinemax4u";
   String to;
   String subject="CINEMAX BOOKING ID";
   String body;
   HttpServletRequest request;
   Show sh,sh2;
   String remainingseat;
   String[] seat;
   String bookedseat;
   String seats1="";
   Userdao ud;
   int id;
   Bookinfo bkf;
   String bookingid;
  
public Emailer() {
ud=new Userdao();
	System.out.println("in ctor of Emailer");
}

ArrayList<String> seats=new ArrayList<String>();
   

   static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }

   public String booktickets() 
   {
	   HttpSession session1=request.getSession();
		sh=(Show) session1.getAttribute("sh");
		System.out.println("Show in seat selection="+sh.toString());
		remainingseat = sh.getRemainingseat();
		System.out.println(remainingseat);
		seat=remainingseat.split("/");
		System.out.println("Email seats:="+seat);
       for (String string : seat) {
			
		  seats.add(string);
		}
       
       seat=bookedseat.split(" ");
       for (String string : seat) {
			
 		  seats.remove(string);
 		}
       
       for (String string : seats) {
			
  		 seats1+=string+"/";
  		}
       id=ud.updateseats(seats1,sh.getShowid());
       System.out.println(id);
       bookingid=bookedseat+sh.getShowid();
       System.out.println(bookingid);
       bkf=new Bookinfo(bookingid,bookedseat,sh);
       ud.storebooking(bkf);
       System.out.println("DATA INSETRED AND UPDATED!!!!!!!!!!!!!!!!!!!!!");
       
       
      String ret = SUCCESS;
      
      try
      {
         Session session = Session.getDefaultInstance(properties,  
            new javax.mail.Authenticator() {
            protected PasswordAuthentication 
            getPasswordAuthentication() {
            return new 
            PasswordAuthentication(from, password);
            }});

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
            InternetAddress.parse(to));
         message.setSubject(subject);
         message.setText("Your Booking Id is:="+bookingid+"Show Information"+sh.toString());
        // Transport.send(message);
      }
      catch(Exception e)
      {
         ret = ERROR;
         e.printStackTrace();
      }
      return ret;
   }

  
   public String getTo() {
      return to;
   }

   public void setTo(String to) {
      this.to = to;
   }

 
//   public String getBody() {
//      return body;
//   }
//
//   public void setBody(String body) {
//      this.body = body;
//   }

   public static Properties getProperties() {
      return properties;
   }

   public static void setProperties(Properties properties) {
      Emailer.properties = properties;
   }
   public String getBookedseat() {
		return bookedseat;
	}

	public void setBookedseat(String bookedseat) {
		this.bookedseat = bookedseat;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		
	}
}

