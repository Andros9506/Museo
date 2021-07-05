package it.uniroma3.siw;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import it.uniroma3.siw.museo.model.Credentials;
import it.uniroma3.siw.museo.service.CredentialsService;

@Component
public class InitMethod implements CommandLineRunner{

	@Autowired
	private CredentialsService credentialsService;
	
	
	@Override
	public void run(String... args) throws Exception {
		credentialsService.saveCredentials(new Credentials("Andrea", "Marti"));
		
	}

}
