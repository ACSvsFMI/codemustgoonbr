package account;

import org.apache.wicket.extensions.yui.calendar.DatePicker;
import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.PasswordTextField;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.model.Model;
import org.apache.wicket.request.mapper.parameter.PageParameters;

import com.fmi.MasterPage;
import com.sun.java.swing.plaf.motif.resources.motif;
import com.sun.swing.internal.plaf.metal.resources.metal;

public class Register extends MasterPage {

	private static final long serialVersionUID = 8421057783647034032L;

	TextField lname;
	TextField fname;
	TextField birthdate;
	TextField username;
	PasswordTextField password;
	PasswordTextField rpassword;
	
	public Register(PageParameters params) {
		super(params);
		lname = new TextField("lname",new Model(""));
		fname = new TextField("fname", new Model(""));
		birthdate = new TextField("birthdate",new Model(""));
		username = new TextField("username",new Model(""));
		password = new PasswordTextField("password",new Model(""));
		rpassword = new PasswordTextField("rpassword", new Model(""));
		Form form = new Form("form") {
			@Override
			protected void onSubmit() {
				System.out.println(lname.getModel().toString());
			}
		};
		add(form);
		form.add(lname);
		form.add(fname);
		form.add(birthdate);
		form.add(username);
		form.add(password);
		form.add(rpassword);
		
	}

}
