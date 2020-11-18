package loginconnection;

public class Register {

	private String username;
	private String emailid;
	private String password;
    private String confirmpassword;
    
    public Register() {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public Register(String username, String emailid, String password, String confirmpassword) {
		super();
		this.username = username;
		this.emailid = emailid;
		this.password = password;
		this.confirmpassword = confirmpassword;
	}

	@Override
	public String toString() {
		return "Register [username=" + username + ", emailid=" + emailid + ", password=" + password
				+ ", confirmpassword=" + confirmpassword + "]";
	}
    
}