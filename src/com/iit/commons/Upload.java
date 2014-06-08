package com.iit.commons;

import java.io.IOException;

import java.util.Hashtable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadException;
import javazoom.upload.UploadFile;

public class Upload {
	
	public String UploadingFile(MultipartFormDataRequest mrequest,String locationToUpload,String fieldId,String desiredFileName){
		String filename ="";
		try {
			//MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
			System.out.println("mrequest"+ mrequest);
			System.out.println("dir locat"+ locationToUpload);
			System.out.println("resume"+ fieldId);
			System.out.println("file name"+ desiredFileName);
			UploadBean upbean = new UploadBean();
			upbean.setFolderstore(locationToUpload);
			Hashtable files = mrequest.getFiles();
			if(files!=null){
				if ( (files != null) && (!files.isEmpty()) )
		        {
					for(int i=0;i<=files.size()-1;i++)
					{
						UploadFile file = (UploadFile) files.get(fieldId);
						if (file != null)
						{							
							
							String OrgFileName = file.getFileName();
							filename = file.getFileName();
							String last = file.getContentType();
							int dotPos = filename.lastIndexOf(".");
							String strExtension = filename.substring(dotPos + 1);
										    
						    filename = desiredFileName + "." + strExtension;
							
						    file.setFileName(filename);
						    System.out.println("ravi..file name"+ filename);
						    upbean.setOverwrite(true);
						    upbean.store(mrequest,fieldId);
							
							System.out.println("File Uploaded succeessfully...");
						}
					}
		        }
			}
		} catch (UploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return locationToUpload+"/"+filename;
		
	}
	
	

}
