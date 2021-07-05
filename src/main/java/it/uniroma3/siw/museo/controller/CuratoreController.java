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

import it.uniroma3.siw.museo.controller.validator.CuratoreValidator;
import it.uniroma3.siw.museo.model.Collezione;
import it.uniroma3.siw.museo.model.Curatore;
import it.uniroma3.siw.museo.service.CollezioneService;
import it.uniroma3.siw.museo.service.CuratoreService;

@Controller
public class CuratoreController {

	@Autowired
	private CuratoreService curatoreService;
	@Autowired
	private CuratoreValidator curatoreValidator;
	@Autowired
	private CollezioneService collezioneService;
	
	
	//Ritorna la lista dei curatori
	@RequestMapping(value="/curatori", method = RequestMethod.GET)
	public String getCuratori(Model model) {
		model.addAttribute("curatori", this.curatoreService.getAll());
		return "curatori";
		
	}
	
	//Ritorna un singolo curatore
	@RequestMapping(value="/curatore/{id}", method = RequestMethod.GET)
	public String getCollezione(@PathVariable("id") Long id, Model model) {
		model.addAttribute("curatore", this.curatoreService.getByMatricola(id));
		return "curatore";
	}
		
	//Cancella un curatore
	@RequestMapping(value="/admin/deleteCuratore/{id}", method = RequestMethod.DELETE)
	public String deleteCuratore(@PathVariable("id")Long id) {
		List<Collezione> collezioni = this.collezioneService.getCollezioneByCuratore(id);
		this.collezioneService.setNullCuratore(collezioni);
		this.curatoreService.deleteCuratoreById(id);
		return "redirect:/curatori";
	}
	
	//Metodi GET e POST per aggiungere un nuovo curatore
	@RequestMapping(value="/admin/curatore", method = RequestMethod.GET)
	public String addCuratore(Model model) {
		model.addAttribute("curatore", new Curatore());
		return "curatoreForm";
	}
	@RequestMapping(value="/admin/curatore", method = RequestMethod.POST)
	public String newCuratore(@ModelAttribute("curatore") Curatore curatore, Model model, BindingResult br) {
		this.curatoreValidator.validate(curatore, br);
		if (!br.hasErrors()) {
			this.curatoreService.saveCuratore(curatore);
			model.addAttribute("curatori", this.curatoreService.getAll());
			return "redirect:/curatori";
		}
		return "curatoreForm";
	}
	
	
	//Metodi GET e POST per modificare un curatore
	@RequestMapping(value ="/admin/curatore/{id}", method = RequestMethod.GET)
	public String modifyCuratore(@PathVariable("id")Long id, Model model) {
		Curatore curatore = curatoreService.getByMatricola(id);
		model.addAttribute("curatore", curatore);
		return "modificaCuratore";				
	}
	
	@RequestMapping(value ="/admin/curatore/{id}", method = RequestMethod.POST)
	public String modifyCuratore(@ModelAttribute("curatore") Curatore curatore, @PathVariable("id")String id, Model model) {
		this.curatoreService.saveCuratore(curatore);
		model.addAttribute("curatori", this.curatoreService.getAll());
		return "redirect:/curatore/"+id;				
	}
}
