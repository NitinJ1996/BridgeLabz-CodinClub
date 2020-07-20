public class helloworld{

	public static void main(String args[]){

		while(true){

		System.out.println("Hello world");
		try{
			Thread.sleep(60000);
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	}
}
