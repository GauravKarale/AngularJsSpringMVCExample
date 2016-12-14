package com.gk.security;
/**
 * @author gauravkhandave
 *
 */
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

import com.gk.configuration.Initializer;

public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {

	public SecurityWebApplicationInitializer() {
		super(Initializer.class);
	}
}
