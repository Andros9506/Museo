package it.uniroma3.siw.museo.controller.validator;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import it.uniroma3.siw.museo.model.Opera;
import it.uniroma3.siw.museo.service.OperaService;

@Component
public class OperaValidator implements Validator {

	@Autowired
	private OperaService operaService;
	
	private static final Logger logger = LoggerFactory.getLogger(Opera.class);
	
	@Override
	public boolean supports(Class<?> clazz) {
		
		return Opera.class.equals(clazz);
	}

	@Override
	public void validate(Object o, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dataRealizzazione", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "descrizione", "required");
		if (!errors.hasErrors()) {
			logger.debug("confermato: valori non nulli");
			if (this.operaService.duplicato((Opera)o)) {
				logger.debug("e' un duplicato");
				errors.reject("duplicato");
			}
		}		
	}

}
