/**
 * 
 */
package polling.Services;


import java.util.logging.Logger;
import polling.Models.User;

/**
 * @author avchlk
 *
 */
public interface IuserServices {
	
	public static Logger log = Logger.getLogger(IuserServices.class.getName());
	
	//New User registration
	public void RegisterUser(User user);
	
	//Checking whether the credentials supplied by the user are correct
	public boolean CheckExist(User user);
	
	//To check user's type(Voter,Candidate,Admin,Commissioner)
	public User getUser(User user);
	
	public boolean CheckEmailExists(User user);
	
	public boolean updateUserProfile(User user,String oldPwd);
	
	public User getUserByEmail(User user);
	
	public void RemoveUser(User user);
	
}
