package Practice;

public class harrypotter {
	
	harrypotter()
	{
		System.out.println("This is the harry potter world");
	}
	
	public static void main(String[] args)
	{
		harrypotter hp=new harrypotter();
		hagrid hg=new hagrid();
		hp.display();
		hg.fun();
	}
	
	void display()
	{
		System.out.println("Today we are working with multiple classes");
	}
}

class hagrid
{
	hagrid()
	{
		System.out.println("My name is Hagrid and I am his mentor and guide");
	}
	
	void fun()
	{
		System.out.println("This is fun");
	}
}