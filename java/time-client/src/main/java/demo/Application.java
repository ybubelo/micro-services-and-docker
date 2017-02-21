package demo;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Application {
	
	public static void main(String[] args) {
		System.out.println("I am Java!");
		String targetURL = String.format("http://%s:%s/api/servertime", args[0], args[1]);
		while (true) {
			try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {
				e.printStackTrace();
				return;
			}
			System.out.println(getServerTime(targetURL));
		}
	}

	public static String getServerTime(String targetURL) {
		System.out.println("GET " + targetURL);
		HttpURLConnection connection = null;
		try {
			URL url = new URL(targetURL);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.setUseCaches(false);
			connection.setDoOutput(true);
			InputStream is = connection.getInputStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(is));
			StringBuilder response = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				response.append(line);
				response.append('\r');
			}
			rd.close();
			return response.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}
}
