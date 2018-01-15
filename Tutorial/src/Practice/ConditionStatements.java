package Practice;

import java.util.Scanner;

public class ConditionStatements {
	public static void main(String[] args)
	{
		boolean eligible=false;
		Scanner sc=new Scanner(System.in);
		int age=sc.nextInt();
		if (age>18)
		{
			System.out.println("Eligible");
		}
		else
		{
			System.out.println("Not eligible");
		}
			
	}
}
