package Practice;

import java.util.Scanner;

public class odd {
	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		int x=sc.nextInt();
		if ((x&1)==1)
		{
			System.out.println("ODD");
		}
		else
		{
			System.out.println("EVEN");
		}
	}
}
