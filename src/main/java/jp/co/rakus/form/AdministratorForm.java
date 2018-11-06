package jp.co.rakus.form;

/**
 * 管理者登録のフォーム.
 * 
 * @author kento.uemura
 *
 */
public class AdministratorForm {
	/** 名前 */
	private String name;
	/** メールアドレス */
	private String mailAddress;
	/** パスワード */
	private String password;

	//constructor	
	public AdministratorForm() {}
	public AdministratorForm(String name, String mailAddress, String password) {
		super();
		this.name = name;
		this.mailAddress = mailAddress;
		this.password = password;
	}

	//getter,setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMailAddress() {
		return mailAddress;
	}
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
