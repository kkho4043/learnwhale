package com.javaex.service; 

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;



@Service
public class ApiService {
	
	private String restApiKey = "4aaff7ffacda146806735614f9f809de";
	
	final String loginURL = "https://kauth.kakao.com/oauth/token";
	final String logoutURL = "https://kapi.kakao.com/v1/user/logout";
	final String dataURL = "https://kapi.kakao.com/v2/user/me";
	
	public void getData(String accessToken) {
		
		try {
			//URL 주소 생성
			URL url = new URL(dataURL);
			//URL 주소에 연결할 conn 객체 생성
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			
			int responseCode = conn.getResponseCode();
			
			System.out.println(responseCode);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String line = "";
			String result = "";
			
			while((line = br.readLine()) != null) {
				
				result += line;
			}
			
			System.out.println("result: "+result);
			
			JsonParser parser = new JsonParser();
			
			JsonElement element = parser.parse(result);
			
			System.out.println(element.getAsJsonObject().get("id").getAsString());
			
			/*
			 * String imgAddress =
			 * element.getAsJsonObject().get("profile_image_url").getAsString();
			 * System.out.println(imgAddress);
			 * 
			 * URL imgUrl = new URL(imgAddress);
			 * 
			 * InputStream in = imgUrl.openStream();
			 * 
			 * FileOutputStream fos = new
			 * FileOutputStream("C:\\Users\\gys11\\Desktop\\JavaStudy\\upload");
			 * 
			 * while(true) {
			 * 
			 * int data = in.read(); if(data == -1) { break; }
			 * 
			 * fos.write(data);
			 * 
			 * }
			 */
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	public void unlink(String accessToken) {
		
		try {
			
			URL url = new URL("https://kapi.kakao.com/v1/user/unlink");
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        
	        //    요청에 필요한 Header에 포함될 내용
	        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		  }
		
		
	}
	
	
	
	
	
	public String getAccessToken(String code) {
		
		String accessToken = "";
		String refreshToken = "";
			
		try {
			
			URL url = new URL(loginURL);
			
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
			BufferedWriter bw = new BufferedWriter(osw);
			
			StringBuilder sb = new StringBuilder();
			
			sb.append("grant_type=authorization_code");
			sb.append("&client_id="+restApiKey);
			sb.append("&redirect_uri=http://localhost:8088/jblog/api/kakao/login");
			sb.append("&code="+code);
			
			bw.write(sb.toString());
			bw.flush();
			
			int responseCode = conn.getResponseCode();
			System.out.println(responseCode);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String line = "";
			String result = "";
			
			while((line = br.readLine()) != null) {
				
				result += line;
			}
			
			System.out.println(result);
			
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			
			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();
			
			
			br.close();
			bw.close();
			
		} catch(IOException e) {
			
			e.printStackTrace();
		}
		
		
		return accessToken;
		
	}
	
	public void logout(String accessToken) {
		
		
		try {
			 	
				URL url = new URL(logoutURL);
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        conn.setRequestMethod("POST");
		        
		        //    요청에 필요한 Header에 포함될 내용
		        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
		        
		        int responseCode = conn.getResponseCode();
		        System.out.println("responseCode : " + responseCode);
		        
		        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        
		        String line = "";
		        String result = "";
		        
		        while ((line = br.readLine()) != null) {
		            result += line;
		        }
		        
		        System.out.println("response body : " + result);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	
	
	
	
	
}
