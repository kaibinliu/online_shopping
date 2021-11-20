package onlineshopping.model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;

public class purchase {
    public int BId;
    public int GId;
    public String BPhone;
    public Date PDate;
    public int PCount;
    public String PAddress;
    public String PState;
    public purchase(){

    }
    public int getBId() {
        return BId;
    }

    public void setBId(int BId) {
        this.BId = BId;
    }

    public int getGId() {
        return GId;
    }

    public void setGId(int GId) {
        this.GId = GId;
    }

    public String getBPhone() {
        return BPhone;
    }

    public void setBPhone(String BPhone) {
        this.BPhone = BPhone;
    }

    public String getPDate() {
        String value = null;
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        value = dateFormat.format(PDate);
        return value;
    }

    public void setPDate(String PDate) {

        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ParsePosition pos = new ParsePosition(0);//�ӵ�һ���ַ���ʼ����
        try {
            this.PDate = (Date) f.parse(PDate,pos);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public int getPCount() {
        return PCount;
    }

    public void setPCount(int PCount) {
        this.PCount = PCount;
    }

    public String getPAddress() {
        return PAddress;
    }

    public void setPAddress(String PAddress) {
        this.PAddress = PAddress;
    }

    public String getPState() {
        return PState;
    }

    public void setPState(String PState) {
        this.PState = PState;
    }
}
