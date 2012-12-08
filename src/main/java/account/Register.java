package account;

import org.apache.wicket.extensions.yui.calendar.DatePicker;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.PasswordTextField;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.request.mapper.parameter.PageParameters;

import com.fmi.MasterPage;

public class Register extends MasterPage {

	private static final long serialVersionUID = 8421057783647034032L;

	
	
	public Register(PageParameters params) {
		super(params);
		Form form = new Form("form") {
			@Override
			protected void onSubmit() {
				
			}
		};
		add(form);
		TextField lname = new TextField("lname");
		TextField fname = new TextField("fname");
		TextField quoteDate = new TextField("birthdate");
		TextField username = new TextField("username");
		PasswordTextField password = new PasswordTextField("password");
		PasswordTextField rpassword = new PasswordTextField("rpassword");
		
	}

}
