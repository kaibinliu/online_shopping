package onlineshopping.model;

import java.sql.Date;

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

    public Date getPDate() {
        return PDate;
    }

    public void setPDate(Date PDate) {
        this.PDate = PDate;
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
