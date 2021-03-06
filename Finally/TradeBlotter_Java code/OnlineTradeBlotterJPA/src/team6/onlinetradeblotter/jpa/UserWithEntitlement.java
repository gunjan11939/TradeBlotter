package team6.onlinetradeblotter.jpa;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users_with_entitlement")
@NamedQuery(name="UserWithEntitlement.findAll", query="SELECT u FROM UserWithEntitlement u")
public class UserWithEntitlement implements Serializable {
	private static final long serialVersionUID = 1L;
	public UserWithEntitlement(){
		
	}
	public UserWithEntitlement(String firstName, String lastName, String userName, String password, Date logoutTime, int entitlement){
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = userName;
		this.password = password;
		this.logoutTime = logoutTime;
		this.setEntitlement(entitlement);
	}
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userID;

	private String firstName;

	private String lastName;

	@Temporal(TemporalType.TIMESTAMP)
	private Date logoutTime;

	private String password;

	private String username;

	private int entitlement;

//	public int getUserID() {
//		return this.userID;
//	}

//	public void setUserID(int userID) {
//		this.userID = userID;
//	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getLogoutTime() {
		return this.logoutTime;
	}

	public void setLogoutTime(Date logoutTime) {
		this.logoutTime = logoutTime;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public int getEntitlement() {
		return entitlement;
	}
	public void setEntitlement(int entitlement) {
		this.entitlement = entitlement;
	}

}