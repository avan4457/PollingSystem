package polling.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionUtil extends CommonUtil {

	private static Connection connection;

	public DBConnectionUtil() {
		
	}

	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {

		if (connection == null || connection.isClosed()) {
			Class.forName(properties.getProperty(CommonConstants.Driver_Name));
			connection = DriverManager.getConnection(properties.getProperty(CommonConstants.Url),
					properties.getProperty(CommonConstants.Username),properties.getProperty(CommonConstants.Password));
		}
		return connection;
	}
}










