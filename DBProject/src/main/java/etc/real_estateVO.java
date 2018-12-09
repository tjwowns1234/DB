package etc;

import java.math.BigInteger;

public class real_estateVO {
	
	int RE_ID;
	float PY;
	BigInteger PRICE;
	int NUM_OF_ROOMS;
	String ADDRESS;
	int TYPE_ID;
	
	public int getRE_ID() {
		return RE_ID;
	}
	public void setRE_ID(int rE_ID) {
		RE_ID = rE_ID;
	}
	public float getPY() {
		return PY;
	}
	public void setPY(float pY) {
		PY = pY;
	}
	public BigInteger getPRICE() {
		return PRICE;
	}
	public void setPRICE(BigInteger pRICE) {
		PRICE = pRICE;
	}
	public int getNUM_OF_ROOMS() {
		return NUM_OF_ROOMS;
	}
	public void setNUM_OF_ROOMS(int nUM_OF_ROOMS) {
		NUM_OF_ROOMS = nUM_OF_ROOMS;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public int getTYPE_ID() {
		return TYPE_ID;
	}
	public void setTYPE_ID(int tYPE_ID) {
		TYPE_ID = tYPE_ID;
	}
	
	
	
}
