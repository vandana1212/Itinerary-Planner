package Practice;
import java.util.Scanner;
public class methods {
	
		methods()  //Do not specify a return type for the constructor
		{
			System.out.println("Constructor is called");
		}
	
		public static void main(String[] args)
		{
			System.out.println("We will be having methods in this class");
			methods obj=new methods();
			obj.othermethod();
		}
		
		void othermethod()
		{
			System.out.println("Object has been created and constructor has been called");
			System.out.println("Now othermethod is being accessed");
		}
}
