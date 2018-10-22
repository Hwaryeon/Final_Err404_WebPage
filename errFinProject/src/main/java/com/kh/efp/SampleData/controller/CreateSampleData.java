package com.kh.efp.SampleData.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.json.JSONArray;
import org.json.JSONException;

import com.opencsv.CSVWriter;

import de.svenjacobs.loremipsum.LoremIpsum;

public class CreateSampleData{

	HttpServletRequest req = null;
	HttpServletResponse res = null;
	private LoremIpsum ipsum = new LoremIpsum();
	
	public CreateSampleData(HttpServletRequest req, HttpServletResponse res) {
		req = this.req;
		res = this.res;
	}

	public boolean createData(String valueJson, int row_amount){
		
		ArrayList<String[]> colunm_list = new ArrayList<String[]>();		//생성할 컬럼및 행들
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");			//날짜 포멧 객체
		GregorianCalendar ggc = new GregorianCalendar();					//랜덤 날자용 객체
		boolean bool = false;
		try {
			JSONArray array = new JSONArray(valueJson);
			int length = array.length();
			String[][] colunm_val = new String[length][3];			//컬럼에 대한 정보
			
			for(int i=0;i<length;i++){
				colunm_val[i][0] = array.getJSONObject(i).getString("title");
				colunm_val[i][1] = array.getJSONObject(i).getString("dataType");
				colunm_val[i][2] = array.getJSONObject(i).getString("values");
			}
			
			String[] titles = new String[length];	//컬럼명 삽입
			ArrayList<String>[] names = new ArrayList[length];
			for(int n=0; n<length; n++){
				titles[n] = colunm_val[n][0];
				if(colunm_val[n][1].equals("R_NAME_READONLY")){		//해당 열 전용 이름들 객체로 저장
					names[n] = randomNameGenerator(row_amount);
				}else if(colunm_val[n][1].equals("R_WORD_READONLY")){		//해당 열 전용 단어들들 객체로 저장
					names[n] = randomWordGenerator(row_amount);
				}
			}
			colunm_list.add(titles);
			
			Calendar cal = Calendar.getInstance();
	        cal.setTime(new Date());
			String[] arr = null;
			for(int i=0; i<row_amount; i++){	//작성된 갯수만큼 컬럼값 생성
				arr = new String[length];
				cal.add(Calendar.DATE, 1);//날자 1씩 증가
				
				for(int n=0; n<length; n++){
					switch(colunm_val[n][1]){
						case "FIXING_SYSDATE_READONLY" : arr[n] = sdf.format(new Date()); break;
						case "FIXING_DATE" : arr[n] = colunm_val[n][2]; break;
						case "FIXING_VALUE" : arr[n] = colunm_val[n][2]; break;
						case "UP_NUMBER_READONLY" : arr[n] = String.valueOf(i+1); break;
						case "UP_VARCHAR" : arr[n] = cut_String(colunm_val[n][2]);break;		//보류
						case "UP_DATE_READONLY" : arr[n] = sdf.format(cal.getTime()); break;
						case "R_NUMBER" : arr[n] = cut_Char(colunm_val[n][2]); break;
						case "R_DATE" : ggc.add(ggc.DATE, Integer.parseInt(cut_Char(colunm_val[n][2]))); arr[n] = sdf.format(ggc.getTime()); ggc = new GregorianCalendar(); break;
						case "R_NAME_READONLY" : arr[n] = names[n].get(i); break;
						case "R_PHONE_READONLY" : arr[n] = R_phone(); break;
						case "R_WORD_READONLY" : arr[n] = names[n].get(i); break;
						case "R_EMAIL_READONLY" : arr[n] = EMAIL(); break;
						case "R_CONTENT_READONLY" : arr[n] = R_Content(); break;
					}
				}
				colunm_list.add(arr);
			}
			
			if(createCSV(colunm_list) == 1){
				bool = true;
			}else{
				bool = false;
			}
			
		} catch (JSONException e) {
			System.out.println(e.getMessage());
			return bool;
		}
		
		
		return bool;
	}

	//CSV 생성
	public int createCSV(ArrayList<String[]> colunm_list){
      try {
            CSVWriter cw = new CSVWriter(new OutputStreamWriter(new FileOutputStream("sampleBox.csv"), "EUC-KR"),',', '"');
            try {
    			cw.writeAll(colunm_list);		//csv파일 생성
            }catch (Exception e) {
            	System.out.println(e.getMessage());
            	return 0;
            }finally {
                //무조건 CSVWriter 객체 close
                cw.close();
            }  
        } catch (Exception e) {
        	System.out.println(e.getMessage());
        	return 0;
        }
      
		return 1;
	}
	
	//랜덤 한글 이름 생성기
	/*public String randomName() {
	    List<String> last_name = Arrays.asList("김", "이", "박", "최", "정", "강", "조", "윤", "장", "임", "한", "오", "서", "신", "권", "황", "안",
	        "송", "류", "전", "홍", "고", "문", "양", "손", "배", "조", "백", "허", "유", "남", "심", "노", "정", "하", "곽", "성", "차", "주",
	        "우", "구", "신", "임", "나", "전", "민", "유", "진", "지", "엄", "채", "원", "천", "방", "공", "강", "현", "함", "변", "염", "양",
	        "변", "여", "추", "노", "도", "소", "신", "석", "선", "설", "마", "길", "주", "연", "방", "위", "표", "명", "기", "반", "왕", "금",
	        "옥", "육", "인", "맹", "제", "모", "장", "남", "탁", "국", "여", "진", "어", "은", "편", "구", "용");
	    List<String> first_name = Arrays.asList("가", "강", "건", "경", "고", "관", "광", "구", "규", "근", "기", "길", "나", "남", "노", "누", "다",
	        "단", "달", "담", "대", "덕", "도", "동", "두", "라", "래", "로", "루", "리", "마", "만", "명", "무", "문", "미", "민", "바", "박",
	        "백", "범", "별", "병", "보", "빛", "사", "산", "상", "새", "서", "석", "선", "설", "섭", "성", "세", "소", "솔", "수", "숙", "순",
	        "숭", "슬", "승", "시", "신", "아", "안", "애", "엄", "여", "연", "영", "예", "오", "옥", "완", "요", "용", "우", "원", "월", "위",
	        "유", "윤", "율", "으", "은", "의", "이", "익", "인", "일", "잎", "자", "잔", "장", "재", "전", "정", "제", "조", "종", "주", "준",
	        "중", "지", "진", "찬", "창", "채", "천", "철", "초", "춘", "충", "치", "탐", "태", "택", "판", "하", "한", "해", "혁", "현", "형",
	        "혜", "호", "홍", "화", "환", "회", "효", "훈", "휘", "희", "운", "모", "배", "부", "림", "봉", "혼", "황", "량", "린", "을", "비",
	        "솜", "공", "면", "탁", "온", "디", "항", "후", "려", "균", "묵", "송", "욱", "휴", "언", "령", "섬", "들", "견", "추", "걸", "삼",
	        "열", "웅", "분", "변", "양", "출", "타", "흥", "겸", "곤", "번", "식", "란", "더", "손", "술", "훔", "반", "빈", "실", "직", "흠",
	        "흔", "악", "람", "뜸", "권", "복", "심", "헌", "엽", "학", "개", "롱", "평", "늘", "늬", "랑", "얀", "향", "울", "련");
	    Collections.shuffle(last_name);
	    Collections.shuffle(first_name);
	    return last_name.get(0) + first_name.get(0) + first_name.get(1);
	}*/
	
	// REST random 이름 가져오기
	public ArrayList<String> randomNameGenerator(int num){
        ArrayList<String> str = new ArrayList<String>();
		try{
			URL url = new URL("http://names.drycodes.com/"+num+"?nameOptions=girl_names,boy_names&format=text");
			 
	        HttpURLConnection connection = (HttpURLConnection) url
	                .openConnection();
	        connection.setRequestMethod("GET");
	        connection.setDoInput(true);
	
	        InputStream is = connection.getInputStream();
	
	        BufferedReader br = new BufferedReader(new InputStreamReader(is));
	        String readLine = null;
	        while ((readLine = br.readLine()) != null) {
	            str.add(readLine);
	        }
	        br.close();

	    } catch (MalformedURLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
		return str;
	}
	
	// REST random 단어 가져오기
	public ArrayList<String> randomWordGenerator(int num){
        ArrayList<String> str = new ArrayList<String>();
		try{
			URL url = new URL("http://names.drycodes.com/"+num+"?format=text&nameOptions=all&separator=space");
			
	        HttpURLConnection connection = (HttpURLConnection) url
	                .openConnection();
	        connection.setRequestMethod("GET");
	        connection.setDoInput(true);
	
	        InputStream is = connection.getInputStream();
	
	        BufferedReader br = new BufferedReader(new InputStreamReader(is));
	        String readLine = null;
	        while ((readLine = br.readLine()) != null) {
	            str.add(readLine);
	        }
	        br.close();

	    } catch (MalformedURLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
		return str;
	}	
	
	//랜덤한 글내용 생성 평균적 영문 10단어 마다 <br> 삽입
	private String R_Content(){
		StringBuffer contents = new StringBuffer("");
		for(int i=0;i<30;i++){
			contents.append((ipsum.getWords(15,new Random().nextInt(48)+1)).replaceAll(",", ""));
			contents.append("<br>");
		}
	 	return contents.toString();
		//return ipsum.getWords(450, new Random().nextInt(48)+1).replaceAll(",", "");
	}
	
	//랜덤한 이메일 생성
	private String EMAIL(){
		List<String> snsEmail = Arrays.asList("@naver.com", "@daum.net","@gmail.com","@live.com","@hotmail.com","@yahoo.com","@yahoo.co.kr","@hanmail.net"
				,"@naver.com","@aol.com","@paran.com","@hanmir.com","@hitel.net","@dreamwiz.com","@nate.com","@empal.com");
		Collections.shuffle(snsEmail);
		return RandomStringUtils.randomAlphabetic(new Random().nextInt(2)+5).toLowerCase() + RandomStringUtils.randomNumeric(new Random().nextInt(2)+2)+snsEmail.get(0);
	}
	
	//랜덤한 폰번호 생성
	private String R_phone(){
		String two = String.format("%04d", new Random().nextInt(9999)+0);
		String thire = String.format("%04d", new Random().nextInt(9999)+0);
		return "010-"+two+"-"+thire;
	}
	//랜덤한숫자, 랜덤한날자  ','을 구분 후 값 문자열 반환
	private String cut_Char(String str){
		String[] arr = str.split(",");
		if(arr.length != 2) return "0";
		
		int one = Integer.parseInt(arr[0].trim());
		int two = Integer.parseInt(arr[1].trim());
		int num = 0;
		if(one > two){	// 10, 5 일때  앞에 수가 뒤에 수보다 많을때
			num = (new Random().nextInt(one-two+1))+two;
		}else{
			num = (new Random().nextInt(two-one+1))+one;
		}
		return String.valueOf(num);
	}
	//VARCHAR2의 값들을 구분에 랜덤으로 하나 반환
	private String cut_String(String str){
		String[] arr = str.split(",");
		if(arr.length == 0) return null;
		Collections.shuffle(Arrays.asList(arr));
		return arr[0].trim();
	}
	//랜덤한 100단위의 금액 생성
	/*private String R_Money(String str){
		String[] arr = str.split(",");
		if(arr.length != 2) return null;
		
		int one = Integer.parseInt(arr[0]);
		int two = Integer.parseInt(arr[1]);
		
		if(one < 100 || two <100){	//100보다 작은 값입력시 100 반환
			return "100";
		}
		String rand = String.valueOf(new Random().nextInt(two-one)+(one));
		System.out.println("rand : "+ rand);
		rand = rand.substring(0,rand.length()-2);
		return rand+"00";
	}*/
}
