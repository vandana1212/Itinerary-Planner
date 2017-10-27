package Practice;

public class static_instance {
	
	static_instance()
	{
		System.out.println("Constructor is called");
	}
	
	public static void main(String[] args)
	{
		display();
		static_instance s=new static_instance(); // instance methods need objects
		s.fun();
	}
	
	void fun()
	{
		System.out.println("This is for fun");
	}
	
	static void display()   // static methods do not require objects to be created
	{
		System.out.println("Displaying something");
	}
}
