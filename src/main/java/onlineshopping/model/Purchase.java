package onlineshopping.model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;


public class Purchase {
	private int Gno;
	private Date PDate;
	private String Username;
	private String Phone;
	public int getGno() {
		return Gno;
	}
	public void setGno(int gno) {
		Gno = gno;
	}
	public String getPDate() {
		String value = null;
		//��Date���͵�ʱ��ת����ָ����ʽ���ַ���
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		value = dateFormat.format(PDate);
		return value;
	}
	public void setPDate(String pDate) {
		//���ַ������͵�����ת����Date���͵�ָ����ʽ������
			SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ParsePosition pos = new ParsePosition(0);//�ӵ�һ���ַ���ʼ����
			try {
				this.PDate = (Date) f.parse(pDate,pos);/*�Բ���msg_create_date��String���ͣ��ӵ�һ���ַ���ʼ��������pos����ת����java.util.Date���ͣ�
			�����Date�ĸ�ʽΪ"yyyy-MM-dd"����ΪSimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");��*/
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public Purchase(int gno, Date pDate, String username, String phone) {
		super();
		Gno = gno;
		PDate = pDate;
		Username = username;
		Phone = phone;
	}
	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
