package com.fmi;

import org.apache.wicket.ajax.AjaxRequestTarget;
import org.apache.wicket.ajax.markup.html.AjaxLink;
import org.apache.wicket.extensions.ajax.markup.html.modal.ModalWindow;
import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.link.Link;
import org.apache.wicket.markup.html.panel.Panel;
import org.apache.wicket.request.mapper.parameter.PageParameters;

public class MyFirstWebPage extends WebPage {
	//ModalWindow modal;
	public MyFirstWebPage(PageParameters pp) {
		Link l = new Link("linkhome") {

			@Override
			public void onClick() {
				setResponsePage(HomePage.class);
			}

		};
		add(l);
		//modal = new ModalWindow("modal");
		AjaxLink al = new AjaxLink("modallink") {

			@Override
			public void onClick(AjaxRequestTarget target) {
				setResponsePage(HomePage.class);
			}
			
		};
		add(al);
	}
}
