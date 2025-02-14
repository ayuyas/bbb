import java.util.*;
import java.io.*;

public class Main
{
	public static void eachDir (File dirfile){
		File[] files=dirfile.listFiles();
		if(files==null)return;
		for(File g:dirfile.listFiles()){
			if(g.isDirectory()){
				
				eachDir(g);
			}else{
				if(g.getName().endsWith(".apk")){
					System.out.println(g.getAbsolutePath());
				}
			}
		}
		
	}
	public static void main(String[] args)
	{
		
	File f=new File("/sdcard/");
	System.out.println(f.list().length);
	eachDir(f);
		for (String b:args){
			
			System.out.println(b);
		}
		
		}
}
