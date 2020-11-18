package springconnection;



import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.JdbcTemplate;

@Repository

public class PassportDAO_Impl implements PassportDAO{
	 private DataSource datasource;
     private JdbcTemplate jdbcTemplate;
     
     @Autowired
     public void setDataSource(DataSource datasource)
     {
         this.datasource = datasource;
         this.jdbcTemplate = new JdbcTemplate(datasource);
     }
    @Autowired
    public void setDataSource1(DataSource datasource)
    {
    	this.datasource=datasource;
    	this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    @Override
    public void insertOpenpage(Openpage op)
    {
    	  // TODO Auto-generated method stub
    	String sql ="insert into Page values(seq_id.nextval,?,?,?,?)";
    	jdbcTemplate.update(sql,op.getApplyingfor(),op.getTypeofapplication(),op.getPages(),op.getValidityRequired());
    	System.out.print("inserted");
    }
	@Override
	public void insertApplicant(Applicant ap) {
		// TODO Auto-generated method stub
		String sql = "insert into Application(firstname,lastname ,Placeofbirth ,age ,gender ,maritalstatus ,identificationmark ,aadhar ,pannumber,DOB) values(?,?,?,?,?,?,?,?,?,?)";
		 jdbcTemplate.update(sql,ap.getFirstname(),ap.getLastname(),ap.getPlaceofbirth(),ap.getAge(),ap.getGender(),ap.getMaritalstatus(),ap.getIdentificationmark(),ap.getAadhar(),ap.getPannumber(),ap.getDOB());
		 System.out.println("inserted");
		
	}
	@Override
	public void insertFamily(Family fm) {
		String sql = "insert into family(fathername,mothername,fatherormotherpassportnumber,address,policestation,town,city,state,pincode,phoneno,telephone,email) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,fm.getFathername(),fm.getMothername(),fm.getFatherormotherpassportnumber(),fm.getAddress(),fm.getPolicestation(),fm.getTown(),fm.getCity(),fm.getState(),fm.getPincode(),fm.getPhoneno(),fm.getTelephone(),fm.getEmail());
		System.out.println("inserted");
	}
	
	public int viewId() {
        String sql="select max(Idnumber) from page";
   
        int ins = jdbcTemplate.queryForInt(sql);
        return ins;
       
    }
}
