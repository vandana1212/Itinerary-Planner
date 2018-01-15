package Practice;

public class staticblockprogram {
	public static void main(String[] args)
	{
		System.out.println("This is the main class");
	}
	
	static
	{
		System.out.println("Testing to see if this is executed first");
		
		String os=System.getenv("OS");
		if (os.equals("Vista")!=true)
		{
			System.out.println("Cannot proceed further");
		}
	}
}
