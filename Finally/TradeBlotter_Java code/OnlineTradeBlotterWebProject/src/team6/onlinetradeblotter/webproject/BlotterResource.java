package team6.onlinetradeblotter.webproject;


import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import team6.onlinetradeblotter.ejb.SessionBeanWithEntitlementLocal;
import team6.onlinetradeblotter.ejb.TestSessionBeanLocal;
import team6.onlinetradeblotter.jpa.Message;
import team6.onlinetradeblotter.jpa.PricingInfo;
import team6.onlinetradeblotter.jpa.PricingInfoWithEntitlement;


@RequestScoped
@Path("/app")
public class BlotterResource {
	
	TestSessionBeanLocal testbean;
	SessionBeanWithEntitlementLocal sessionbean;
	Context context;
	
	public BlotterResource(){
		try {
			context = new InitialContext();
			testbean = (TestSessionBeanLocal) context.lookup("java:app/OnlineTradeBlotterEJB/TestSessionBean!team6.onlinetradeblotter.ejb.TestSessionBeanLocal");
			sessionbean = (SessionBeanWithEntitlementLocal) context.lookup("java:app/OnlineTradeBlotterEJB/SessionBeanWithEntitlement!team6.onlinetradeblotter.ejb.SessionBeanWithEntitlementLocal");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@GET
	@Produces("text/plain")
	public String hello() {
	System.out.println("Received a GET request from app");
	return "Hello from Backend!";
	}
	
	@GET
	@Path("/signin")
	@Produces("text/plain")
	public String testUserKeyCorrect(@QueryParam("userName") String userName, @QueryParam("key") String key){
		System.out.println(userName+key);
		if(testbean.checkLogin(userName,key))
		return "yes";
		else
			return "no";
	}
	
	@GET
	@Path("/signin1")
	@Produces("text/plain")
	public int testUserKeyCorrect1(@QueryParam("userName") String userName, @QueryParam("key") String key){
		System.out.println(userName+key);
		return sessionbean.checkLoginWithEntitlement(userName, key);
	}
	
	@GET
	@Path("/getPrices")
	@Produces("application/json")
	public List<PricingInfoWithEntitlement> getAllPricingInfo(@QueryParam("search") @DefaultValue("")String search,@QueryParam("entitlement") int entitlement){
		List<PricingInfoWithEntitlement> list = new ArrayList<>();
		list = sessionbean.getAllPricingInfoWithEntitlement1(search, entitlement);
		return list;
	}
	
	@GET
	@Path("/getPrices1")
	@Produces("application/json")
	public List<PricingInfoWithEntitlement> getAllPricingInfo1(@QueryParam("search") @DefaultValue("")String search,@QueryParam("entitlement") int entitlement){
		List<PricingInfoWithEntitlement> list = new ArrayList<>();
		list = sessionbean.getAllPricingInfoWithEntitlement(search, entitlement);
		return list;
	}
	
	@GET
	@Path("/getSortedPrices")
	@Produces("application/json")
	public List<PricingInfoWithEntitlement> getSortedPricingInfo(@QueryParam("sort") @DefaultValue("")String sort,@QueryParam("entitlement") int entitlement,@QueryParam("value") int value){
		List<PricingInfoWithEntitlement> list = new ArrayList<>();
		list = sessionbean.getAllPricingInfoWithEntitlementWithSort(sort, entitlement,value);
		return list;
	}
	
	@GET
	@Path("/register")
	@Produces("text/plain")
	public String registerUser(@QueryParam("firstName") String firstName, @QueryParam("lastName") String lastName, @QueryParam("userName") String userName, @QueryParam("key") String key){
		System.out.println(userName+key+firstName+lastName);
		if(testbean.registerUser(firstName,lastName,userName,key))
		return "yes";
		else
			return "no";
	}
	
	@GET
	@Path("/register1")
	@Produces("text/plain")
	public String registerUser1(@QueryParam("firstName") String firstName, @QueryParam("lastName") String lastName, @QueryParam("userName") String userName, @QueryParam("key") String key, @QueryParam("entitlement") int entitlement){
		System.out.println(userName+key+firstName+lastName);
		if(sessionbean.registerUserWithEntitlement(firstName, lastName, userName, key, entitlement))
		return "yes";
		else
			return "no";
	}
	
	@GET
	@Path("/forgotPassword")
	@Produces("text/plain")
	public String forgotUser(@QueryParam("firstName") String firstName, @QueryParam("lastName") String lastName, @QueryParam("userName") String userName){
		//System.out.println(userName+key+firstName+lastName);
		return testbean.forgotPassword(userName, firstName, lastName);
	}
	
	@GET
	@Path("/forgotPassword1")
	@Produces("text/plain")
	public String forgotUser1(@QueryParam("firstName") String firstName, @QueryParam("lastName") String lastName, @QueryParam("userName") String userName){
		//System.out.println(userName+key+firstName+lastName);
		return sessionbean.forgotPassword(userName, firstName, lastName);
	}
	
	@GET
	@Path("/getNotes")
	@Produces("application/json")
	public String getNotes(@QueryParam("userName") String userName){
		return testbean.getNote(userName);
	}
	
	@GET
	@Path("/getNotes1")
	@Produces("application/json")
	public String getNotes1(@QueryParam("userName") String userName){
		return sessionbean.getNote(userName);
	}
	
	@GET
	@Path("/saveNotes")
	@Produces("application/json")
	public void saveNotes(@QueryParam("userName") String userName,@QueryParam("notes") String notes){
		//return 
		testbean.updateNote(userName, notes);
	}
	
	@GET
	@Path("/saveNotes1")
	@Produces("application/json")
	public void saveNotes1(@QueryParam("userName") String userName,@QueryParam("notes") String notes){
		//return 
		sessionbean.updateNote(userName, notes);
	}
	
	@GET
	@Path("/saveNotes2")
	@Produces("application/json")
	public void saveNotes2(@QueryParam("userName") String userName,@QueryParam("notes") String notes){
		//return 
		sessionbean.updateNote1(userName, notes);
	}
	
	@GET
	@Path("/getUserGroups")
	@Produces("text/plain")
	public List<String> getUserGroups(@QueryParam("userName") String userName){
		List<String> list = new ArrayList<>();
		list = sessionbean.getAllUserGroups(userName);
		System.out.println(list);
		return list;
	}
	
	@GET
	@Path("/getUserGroups1")
	@Produces("application/json")
	public List<String> getUserGroups1(@QueryParam("userName") String userName){
		List<String> list = new ArrayList<>();
		list = sessionbean.getAllUserGroups(userName);
		System.out.println(list);
		return list;
	}
	
	@GET
	@Path("/getMessage")
	@Produces("application/json")
	public List<Message> getMessages1(@QueryParam("groupName") String groupName){
		List<Message> list = new ArrayList<>();
		list = sessionbean.getAllGroupMessages1(groupName);
		System.out.println(list);
		return list;
	}
	
	@GET
	@Path("/sendMessage")
	@Produces("text/plain")
	public void sendMessage(@QueryParam("groupName") String groupName, @QueryParam("sender") String sender, @QueryParam("message") String message){
		//System.out.println(userName+key+firstName+lastName);
		sessionbean.addGroupMessages(groupName, message, sender);
	}
	
}
