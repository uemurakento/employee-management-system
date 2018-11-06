package jp.co.rakus.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jp.co.rakus.domain.Administrator;

@Repository
public class AdministratorRepository {
	public static final String TABLE_NAME = "administrators";
	@Autowired
	NamedParameterJdbcTemplate template;
	//与えられたResultSetをBooleanに変換するRowMapper
	private static final RowMapper<Boolean> HAS_ADMINISTRATOR_ROW_MAPPER = (rs,i) ->{
		Boolean bool;
		if(rs.getInt("count_id") >= 1) {
			bool = new Boolean(true);
		}else {			
			bool = new Boolean(false);
		}
		return bool;
	};
	
	public void insert(Administrator administrator) {
//		System.out.println("name:"+name);
//		System.out.println("mail:"+mailAddress);
//		System.out.println("pass:"+password+"\n");
		//データベースに管理者情報をinsert
		SqlParameterSource param = new BeanPropertySqlParameterSource(administrator);
		String sql = "INSERT INTO "+TABLE_NAME+" (name,mail_address,password) VALUES(:name,:mailAddress,:password);";
		template.update(sql, param);
	}
	
	public boolean hasAdministrator(Administrator administraror) {
		SqlParameterSource param = new BeanPropertySqlParameterSource(administraror);
		String sql = "SELECT COUNT(id) count_id FROM "+TABLE_NAME+" WHERE mail_address=:mailAddress AND password=:password;";
		Boolean hasAdministrator = template.queryForObject(sql, param,HAS_ADMINISTRATOR_ROW_MAPPER);
		return hasAdministrator;
	}

}
