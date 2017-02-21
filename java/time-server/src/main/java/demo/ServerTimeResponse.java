package demo;

import java.util.Date;

public class ServerTimeResponse {

	private final Date serverTime;
	
	public ServerTimeResponse()
	{
		serverTime = new Date();
	}
	
	public Date getServerTime()
	{
		return serverTime;
	}
}
