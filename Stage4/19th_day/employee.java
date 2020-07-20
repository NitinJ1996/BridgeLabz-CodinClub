import java.util.*;

public class Employee{
	public static void main(String args[])
	{
		Random random = new Random();
		int employee = random.nextInt(2);
		int ispresent=1;
		if(employee==ispresent)
		{
			System.out.println("Employee Present");
		}
		else
		{
			System.out.println("Employee Absent");
		}
	}
}

	
