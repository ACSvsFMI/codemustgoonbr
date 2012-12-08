package account;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.link.Link;
import org.apache.wicket.markup.html.panel.FeedbackPanel;

public class login extends WebPage {
	FeedbackPanel feedback;

	public login() {
		feedback = new FeedbackPanel("feedback");
		add(feedback);
		Link l = new Link("register") {

			@Override
			public void onClick() {
				setResponsePage(Register.class);

			}
		};
		add(l);
	}

}
