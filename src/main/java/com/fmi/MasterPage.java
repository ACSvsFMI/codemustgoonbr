package com.fmi;

import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.request.mapper.parameter.PageParameters;

public class MasterPage extends WebPage {
	FeedbackPanel feedback;
	public MasterPage(PageParameters params) {
		feedback = new FeedbackPanel("feedback");
		add(feedback);
	}
}
