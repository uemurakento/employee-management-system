package jp.co.rakus.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jp.co.rakus.domain.Employee;

@Repository
public class EmployeeRepository {
	public static final String TABLE_NAME = "employees";
	@Autowired
	private NamedParameterJdbcTemplate template;
	private static final RowMapper<Employee> EMPLOYEE_ROW_MAPPER = (rs,i) -> {
		Employee employee = new Employee(
				rs.getInt("id"),
				rs.getString("name"),
				rs.getString("image"),
				rs.getString("gender"),
				rs.getDate("hiredate"),
				rs.getString("mail_address"),
				rs.getString("zip_code"),
				rs.getString("address"),
				rs.getString("telephone"),
				rs.getInt("salary"),
				rs.getString("characteristics"),
				rs.getInt("dependents_count"));
		return employee;
	};
	
	public List<Employee> findAll(){
		String sql = "SELECT id,name,image,gender,hiredate,mail_address,zip_code,address,telephone,salary,characteristics,dependents_count FROM "+TABLE_NAME+" ORDER BY hiredate;";
		List<Employee> employees = template.query(sql, EMPLOYEE_ROW_MAPPER);
		return employees;
	}
	
	public Employee load(Integer id) {
		String sql = "SELECT id,name,image,gender,hiredate,mail_address,zip_code,address,telephone,salary,characteristics,dependents_count FROM "+TABLE_NAME+" WHERE id=:id;";
		SqlParameterSource param = new MapSqlParameterSource().addValue("id", id);
		Employee employee = template.queryForObject(sql, param, EMPLOYEE_ROW_MAPPER);
		return employee;
	}
}
