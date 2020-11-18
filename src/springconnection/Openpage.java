package springconnection;

public class Openpage {
private String Applyingfor;
private String typeofapplication;
private int pages;
private String ValidityRequired;
private String idnumber; 


public Openpage() {
	// TODO Auto-generated constructor stub
}

public String getApplyingfor() {
	return Applyingfor;
}
public void setApplyingfor(String applyingfor) {
	Applyingfor = applyingfor;
}
public String getTypeofapplication() {
	return typeofapplication;
}
public void setTypeofapplication(String typeofapplication) {
	this.typeofapplication = typeofapplication;
}
public int getPages() {
	return pages;
}
public void setPages(int pages) {
	this.pages = pages;
}
public String getValidityRequired() {
	return ValidityRequired;
}
public void setValidityRequired(String validityRequired) {
	ValidityRequired = validityRequired;
}
public String getIdnumber() {
	return idnumber;
}

public void setIdnumber(String idnumber) {
	this.idnumber = idnumber;
}
@Override
public String toString() {
	return "Openpage [Applyingfor=" + Applyingfor + ", typeofapplication=" + typeofapplication + ", pages=" + pages
			+ ", ValidityRequired=" + ValidityRequired + ", idnumber=" + idnumber + "]";
}

public Openpage(String applyingfor, String typeofapplication, int pages, String validityRequired, String idnumber) {
	super();
	Applyingfor = applyingfor;
	this.typeofapplication = typeofapplication;
	this.pages = pages;
	ValidityRequired = validityRequired;
	this.idnumber = idnumber;
}


}
