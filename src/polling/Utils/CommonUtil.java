package polling.Utils;

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Random;

import polling.Models.User;
import polling.Services.IuserServices;

public class CommonUtil {
	
	public static final Logger log = Logger.getLogger(IuserServices.class.getName());
	
	public static final Properties properties = new Properties();

	static {
		try {
			properties.load(QueryUtil.class.getResourceAsStream(CommonConstants.Property_File));	
		} 
		catch (IOException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	public static String generateId(User user){
		Random rand = new Random();
		String id = "u";
		int n = rand.nextInt(100);
		return id + Integer.toString(n);	
	}
	
}
