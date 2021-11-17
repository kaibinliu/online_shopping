package onlineshopping.model.sellerDao;

public class SetPassword {
    public String password;
    public String againpassword;
	public SetPassword() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SetPassword(String password, String againpassword) {
		super();
		this.password = password;
		this.againpassword = againpassword;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAgainpassword() {
		return againpassword;
	}

	public void setAgainpassword(String againpassword) {
		this.againpassword = againpassword;
	}

	@Override
	public String toString() {
		return "SetPassword [password=" + password + ", againpassword=" + againpassword + ", getPassword()="
				+ getPassword() + ", getAgainpassword()=" + getAgainpassword() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

    
}
