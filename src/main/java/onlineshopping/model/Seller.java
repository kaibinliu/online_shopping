package onlineshopping.model;

public class Seller {
    private int SId;
    private String SUsername;
    private String SPassword;

    public Seller(int SId, String SUsername, String SPassword) {
        this.SId = SId;
        this.SUsername = SUsername;
        this.SPassword = SPassword;
    }

    public Seller(){

    }

    public int getSId() {
        return SId;
    }

    public void setSId(int SId) {
        this.SId = SId;
    }

    public String getSUsername() {
        return SUsername;
    }

    public void setSUsername(String SUsername) {
        this.SUsername = SUsername;
    }

    public String getSPassword() {
        return SPassword;
    }

    public void setSPassword(String SPassword) {
        this.SPassword = SPassword;
    }
}
