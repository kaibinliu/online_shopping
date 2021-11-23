package onlineshopping.model;

public class Goods {
    public int GId;
    public String GName;
    public String GCategoryone;
    public String GCategorytwo;
    public double GPrice;
    public String GPicture;
    public String GDescribe;
    public int GStock;

    public Goods() {
    }


    public Goods(int GId, String GName, String GCategoryone, String GCategorytwo, double GPrice, String GPicture, String GDescribe, int GStock) {
        this.GId = GId;
        this.GName = GName;
        this.GCategoryone = GCategoryone;
        this.GCategorytwo = GCategorytwo;
        this.GPrice = GPrice;
        this.GPicture = GPicture;
        this.GDescribe = GDescribe;
        this.GStock = GStock;
    }

    public int getGId() {
        return GId;
    }

    public void setGId(int GId) {
        this.GId = GId;
    }

    public String getGName() {
        return GName;
    }

    public void setGName(String GName) {
        this.GName = GName;
    }

    public String getGCategoryone() {
        return GCategoryone;
    }

    public void setGCategoryone(String GCategoryone) {
        this.GCategoryone = GCategoryone;
    }

    public String getGCategorytwo() {
        return GCategorytwo;
    }

    public void setGCategorytwo(String GCategorytwo) {
        this.GCategorytwo = GCategorytwo;
    }

    public double getGPrice() {
        return GPrice;
    }

    public void setGPrice(double GPrice) {
        this.GPrice = GPrice;
    }

    public String getGPicture() {
        return GPicture;
    }

    public void setGPicture(String GPicture) {
        this.GPicture = GPicture;
    }

    public String getGDescribe() {
        return GDescribe;
    }

    public void setGDescribe(String GDescribe) {
        this.GDescribe = GDescribe;
    }

    public int getGStock() {
        return GStock;
    }

    public void setGStock(int GStock) {
        this.GStock = GStock;
    }
}
