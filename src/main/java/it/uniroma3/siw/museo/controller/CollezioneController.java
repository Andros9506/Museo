package it.uniroma3.siw.museo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.siw.museo.controller.validator.CollezioneValidator;
import it.uniroma3.siw.museo.model.Collezione;
import it.uniroma3.siw.museo.model.Opera;
import it.uniroma3.siw.museo.service.CollezioneService;
import it.uniroma3.siw.museo.service.CuratoreService;
import it.uniroma3.siw.museo.service.OperaService;

@Controller
public class CollezioneController {

	@Autowired
	private CollezioneService collezioneService;
	@Autowired
	private CollezioneValidator collezioneValidator;
	@Autowired
	private CuratoreService curatoreService;
	@Autowired
	private OperaService operaService;


	//Ritorna la lista delle collezionie
	@RequestMapping(value="/collezioni", method = RequestMethod.GET)
	public String getCollezioni(Model model) {
		model.addAttribute("collezioni", this.collezioneService.getAll());
		return "collezioni";

	}

	//Ritorna una singola collezione
	@RequestMapping(value="/collezione/{id}", method = RequestMethod.GET)
	public String getCollezione(@PathVariable("id") Long id, Model model) {
		model.addAttribute("collezione", this.collezioneService.getById(id));
		return "collezione";
	}


	//Metodi GET e POST per l'aggiunta di una nuova collezione
	@RequestMapping(value="/admin/collezione", method = RequestMethod.GET)
	public String addCollezione(Model model) {
		model.addAttribute("collezione", new Collezione());
		model.addAttribute("curatore", this.curatoreService.getAll());
		return "collezioneForm";
	}

	@RequestMapping(value="/admin/collezioni", method = RequestMethod.POST)
	public String newCollezione(@ModelAttribute("collezione") Collezione collezione, Model model, BindingResult br) {

		this.collezioneValidator.validate(collezione, br);

		if (!br.hasErrors()) {

			if( collezione.getCuratore().getMatricola()==0) {
				collezione.setCuratore(null);
				this.collezioneService.saveCollezione(collezione);
			}
			else {				
				this.collezioneService.saveCollezione(collezione);
				
				
			}
			model.addAttribute("collezioni", this.collezioneService.getAll());
			return "redirect:/collezioni";
		}
		return "collezioneForm";
	}


	//Cancella una collezione e i riferimenti alle opere collegate
	@RequestMapping(value="/admin/deleteCollezione/{id}", method = RequestMethod.DELETE)
	public String deleteCollezione(@PathVariable("id")Long id) {
		List<Opera> opere=this.operaService.getOpereByCollezione(id);
		this.operaService.setNullCollezione(opere);
		this.collezioneService.deleteCollezioneById(id);
		return "redirect:/collezioni";
	}


	//Metodi GET e POST per la modifica di una collezione
	@RequestMapping(value ="/admin/collezione/{id}", method = RequestMethod.GET)
	public String modifyCollezione(@PathVariable("id")Long id, Model model) {
		Collezione collezione = collezioneService.getById(id);
		model.addAttribute("collezione", collezione);
		model.addAttribute("curatori", this.curatoreService.getAll());
		return "modificaCollezione";				
	}

	@RequestMapping(value ="/admin/collezione/{id}", method = RequestMethod.POST)
	public String modifyCollezione(@ModelAttribute("collezione") Collezione collezione, @PathVariable("id")String id, Model model) {
		if( collezione.getCuratore().getMatricola()==0) {
			collezione.setCuratore(null);
			this.collezioneService.saveCollezione(collezione);
		}
		else				
			this.collezioneService.saveCollezione(collezione);

		model.addAttribute("collezione", this.collezioneService.getAll());
		model.addAttribute("collezioni", this.collezioneService.getAll());
		return "redirect:/collezione/"+id;				
	}

}
