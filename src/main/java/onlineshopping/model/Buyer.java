package onlineshopping.model;

public class Buyer {
    private int BId;
    private String BUsername;
    private String BPassword;
    private String BPhone;
    private String BAddress;

    public Buyer(int BId, String BUsername, String BPassword, String BPhone, String BAddress) {
        this.BId = BId;
        this.BUsername = BUsername;
        this.BPassword = BPassword;
        this.BPhone = BPhone;
        this.BAddress = BAddress;
    }

    public Buyer() {
    }

    public int getBId() {
        return BId;
    }

    public void setBId(int BId) {
        this.BId = BId;
    }

    public String getBUsername() {
        return BUsername;
    }

    public void setBUsername(String BUsername) {
        this.BUsername = BUsername;
    }

    public String getBPassword() {
        return BPassword;
    }

    public void setBPassword(String BPassword) {
        this.BPassword = BPassword;
    }

    public String getBPhone() {
        return BPhone;
    }

    public void setBPhone(String BPhone) {
        this.BPhone = BPhone;
    }

    public String getBAddress() {
        return BAddress;
    }

    public void setBAddress(String BAddress) {
        this.BAddress = BAddress;
    }

}