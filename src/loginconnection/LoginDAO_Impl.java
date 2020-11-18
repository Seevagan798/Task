package loginconnection;



import java.util.List;



import javax.sql.DataSource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class LoginDAO_Impl {
   
   private DataSource datasource;
   private JdbcTemplate jdbctemp;
   
   @Autowired
   public void setDatasource(DataSource datasource) {
       this.datasource = datasource;
       this.jdbctemp = new JdbcTemplate(datasource);
   }
   
   public void insert(Register s)
   {
       String sql="insert into reg(username,emailid,password) values(?,?,?)";
       jdbctemp.update(sql,s.getUsername(),s.getEmailid(),s.getPassword());
       System.out.println("Registerd");
   }
   
   
   



   public boolean authenticateUser(Login login) {
       System.out.println("chking");
       boolean userExists = true;
       String sql=("select username,password from reg where username= '"
               + login.getUsername() + "' and password='" + login.getPassword() + "'");
       // login.getUsername(),login.getPassword());
       List<String> rowcount = jdbctemp.query(sql,new BeanPropertyRowMapper(Register.class));
       if (rowcount.size() == 0) {
           userExists = false;
       } // TODO Auto-generated method stub
       System.out.println("checked");
       return userExists;
   }
   
   



}