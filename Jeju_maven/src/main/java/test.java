import java.sql.Timestamp;

public class test {

	public static void main(String[] args) {
		
		String date="2017-05-17";
		date=date+" "+"00:00:00.0";
		Timestamp timestamp = Timestamp.valueOf(date);
		System.out.println(timestamp);
		
	}

}
