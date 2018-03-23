package Listener;/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author student
 */
public class SessionListener implements HttpSessionListener {
    ServletContext sc ;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        sc = se.getSession().getServletContext();
        sc.log("NEW SESSION: "+se.getSession().getId());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
       sc.log("ENDING SESSION: "+se.getSession().getId());
    }
}
