import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class test {

	public static void main(String[] args) {
		
		String date="2017-05-17";
		date=date+" "+"00:00:00.0";
		Timestamp timestamp = Timestamp.valueOf(date);
		System.out.println(timestamp);
		
		List<String> testList = new ArrayList<String>();
		testList.add("짜증나");
		System.out.println(testList.get(0));
	}

}
