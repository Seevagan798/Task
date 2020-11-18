package springconnection;

public class Family {
	private String fathername;
	private String mothername;
	private String fatherormotherpassportnumber;
	private String address;
	private String policestation;
	private String town;
	private String city;
	private String state;
	private String pincode;
	private String phoneno;
	private String telephone;
	private String email;
	
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getFatherormotherpassportnumber() {
		return fatherormotherpassportnumber;
	}
	public void setFatherormotherpassportnumber(String fatherormotherpassportnumber) {
		this.fatherormotherpassportnumber = fatherormotherpassportnumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPolicestation() {
		return policestation;
	}
	public void setPolicestation(String policestation) {
		this.policestation = policestation;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Family() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString()
	{
		return "Family [fathername=" + fathername + ", mothername=" + mothername + ", fatherormotherpassportnumber="
				+ fatherormotherpassportnumber + ", address=" + address + ", policestation=" + policestation + ", town="
				+ town + ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", phoneno=" + phoneno
				+ ", telephone=" + telephone + ", email=" + email + "]";
	}
	public Family(String fathername, String mothername, String fatherormotherpassportnumber, String address,
			String policestation, String town, String city, String state, String pincode, String phoneno, String telephone,
			String email) 
	{
		super();
		this.fathername = fathername;
		this.mothername = mothername;
		this.fatherormotherpassportnumber = fatherormotherpassportnumber;
		this.address = address;
		this.policestation = policestation;
		this.town = town;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.phoneno = phoneno;
		this.telephone = telephone;
		this.email = email;
	}
}