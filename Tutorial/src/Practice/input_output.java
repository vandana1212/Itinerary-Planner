package Practice;
import java.util.Scanner;
public class input_output {
	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		String s;
		float f;
		int i;
		i=sc.nextInt();
		System.out.println("Inputted integer is"+i);
		f=sc.nextFloat();
		System.out.println("Inputted float is "+f);
		s=sc.next();
		System.out.println("Finally the string is "+ s);
	}
}
