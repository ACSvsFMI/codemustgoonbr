package com.fmi;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.link.Link;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.request.mapper.parameter.PageParameters;

import account.Register;

public class MasterPage extends WebPage {
	FeedbackPanel feedback;
	public MasterPage(PageParameters params) {
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
