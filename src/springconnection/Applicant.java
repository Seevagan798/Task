package springconnection;

public class Applicant {
	private String firstname;
	private String lastname;
	private String DOB;
	private String placeofbirth;
	private int age;
	private String Gender;
	private String maritalstatus;
	private String identificationmark;
	private long Aadhar;
	private String pannumber;
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getPlaceofbirth() {
		return placeofbirth;
	}

	public void setPlaceofbirth(String placeofbirth) {
		this.placeofbirth = placeofbirth;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getMaritalstatus() {
		return maritalstatus;
	}

	public void setMaritalstatus(String maritalstatus) {
		this.maritalstatus = maritalstatus;
	}

	public String getIdentificationmark() {
		return identificationmark;
	}

	public void setIdentificationmark(String identificationmark) {
		this.identificationmark = identificationmark;
	}

	public long getAadhar() {
		return Aadhar;
	}

	public void setAadhar(long aadhar) {
		Aadhar = aadhar;
	}

	public String getPannumber() {
		return pannumber;
	}

	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}

	@Override
	public String toString() {
		return "Applicant [firstname=" + firstname + ", lastname=" + lastname + ", DOB=" + DOB + ", placeofbirth="
				+ placeofbirth + ", age=" + age + ", Gender=" + Gender + ", maritalstatus=" + maritalstatus
				+ ", identificationmark=" + identificationmark + ", Aadhar=" + Aadhar + ", pannumber=" + pannumber
				+ "]";
	}

	public Applicant() {
		// TODO Auto-generated constructor stub
	}

	public Applicant(String firstname, String lastname, String dOB, String placeofbirth, int age, String gender,
			String maritalstatus, String identificationmark, long aadhar, String pannumber) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		DOB = dOB;
		this.placeofbirth = placeofbirth;
		this.age = age;
		Gender = gender;
		this.maritalstatus = maritalstatus;
		this.identificationmark = identificationmark;
		Aadhar = aadhar;
		this.pannumber = pannumber;
	}
}
