package com.kh.efp.codeFactory.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import com.google.gson.Gson;
import com.kh.efp.codeFactory.model.vo.ExecuteInformation;
import com.kh.efp.codeFactory.model.vo.ExecuteResult;

public class ExecuteCode {

	public ExecuteCode() {}
	
	public ExecuteResult CompileCode(String code, String language){
		String clientId = "184f7db78236c683233a1bdfa7dcc1f9";
        String clientSecret = "7a08166960971aeadba89ef3657c292eee70e33dca33651faad5443d9127eda6";
        String script = code;
        String versionIndex = "0";

        Gson gson = new Gson();
        String information = gson.toJson(new ExecuteInformation(clientId, clientSecret, script, versionIndex, language)); 
        System.out.println(information);
        String result = "";
        
        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json;");
            
            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(information.getBytes());
            outputStream.flush();

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                throw new RuntimeException("Please check your inputs : HTTP error code : "+ connection.getResponseCode());
            }

            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

            String output;
            while ((output = bufferedReader.readLine()) != null) {
                result = output;
            }
            
            connection.disconnect();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
		ExecuteResult er = gson.fromJson(result, ExecuteResult.class);
		
		return er;
	}

}
