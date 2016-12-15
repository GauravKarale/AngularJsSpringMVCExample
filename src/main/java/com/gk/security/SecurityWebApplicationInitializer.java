package com.gk.security;
/*
 @author gauravkhandave
 *
 */
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

import com.gk.configuration.SpringConf;

public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {

	public SecurityWebApplicationInitializer() {
		super(SpringConf.class);
	}
}
