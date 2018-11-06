package jp.co.rakus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.domain.Administrator;
import jp.co.rakus.form.AdministratorForm;
import jp.co.rakus.repository.AdministratorRepository;

@Controller
@RequestMapping("/")
public class AdministratorController {
	@Autowired
	private AdministratorRepository repository;
	@ModelAttribute
	public AdministratorForm setUpForm() {
		return new AdministratorForm();
	}
	
	@RequestMapping("/")
	public String index() {
		return "/administrator/login";
	}
	
	@RequestMapping("/insert")
	public String insertAdministrator() {
		return "/administrator/insert";
	}
	
	@RequestMapping("/registration")
	public String registrationAdministrator(AdministratorForm form) {
		Administrator administrator = new Administrator(
				null,
				form.getName(),
				form.getMailAddress(),
				form.getPassword());
		repository.insert(administrator);
		return "/administrator/login";
	}
	
	@RequestMapping("/login")
	public String login(AdministratorForm form) {
		Administrator administrator = new Administrator(
				null,
				null,
				form.getMailAddress(),
				form.getPassword());
		boolean hasAdministrator = repository.hasAdministrator(administrator);
		if(hasAdministrator) {
			return "forward:/employee/";
		}
		//エラーチェック追加時にここに書く
		return index();
	}
}
