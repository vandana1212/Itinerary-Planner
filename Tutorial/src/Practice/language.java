package Practice;

public class language {
	String name;
	
	language()
	{
		System.out.println("Constructor method called");
	}
	
	language(String s)
	{
		name=s;
	}
	
		public static void main(String[] args)
		{
			language l=new language();
			language l1=new language("Java");
			l1.getting();
			l.setting("C++");
			l.getting();
		}
		
		void setting(String s)
		{
			name=s;
		}
		
		void getting()
		{
			System.out.println(name);
		}
}
