package it.uniroma3.siw.museo.controller.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import it.uniroma3.siw.museo.model.Curatore;
import it.uniroma3.siw.museo.service.CuratoreService;

@Component
public class CuratoreValidator implements Validator{

	@Autowired
	private CuratoreService curatoreService;
	
	private static final Logger logger = LoggerFactory.getLogger(Curatore.class);

	@Override
	public boolean supports(Class<?> clazz) {
		return Curatore.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "required");
		ValidationUtils.rejectIfEmpty(errors, "cognome", "required");
		ValidationUtils.rejectIfEmpty(errors, "luogoNascita", "required");
		ValidationUtils.rejectIfEmpty(errors, "email", "required");
		if (!errors.hasErrors()) {
			logger.debug("confermato: valori non nulli");
			if (this.curatoreService.alreadyExists((Curatore)target)) {
				logger.debug("è un duplicato");
				errors.reject("duplicato");
				
			}
		}
		
	}
	
	
}
