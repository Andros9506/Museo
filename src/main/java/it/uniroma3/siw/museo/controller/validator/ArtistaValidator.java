package it.uniroma3.siw.museo.controller.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import it.uniroma3.siw.museo.model.Artista;
import it.uniroma3.siw.museo.service.ArtistaService;

@Component
public class ArtistaValidator implements Validator{

	@Autowired
	private ArtistaService artistaService;
	
	private static final Logger logger = LoggerFactory.getLogger(Artista.class);
	
	@Override
	public boolean supports(Class<?> clazz) {
		
		return Artista.class.equals(clazz);
	}

	@Override
	public void validate(Object o, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "luogoNascita", "required");
		if (!errors.hasErrors()) {
			logger.debug("confermato: valori non nulli");
			if (this.artistaService.alreadyExists((Artista)o)) {
				logger.debug("e' un duplicato");
				errors.reject("duplicato");
			}
		}		
	}
}
