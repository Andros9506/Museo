package it.uniroma3.siw.museo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.siw.museo.controller.validator.OperaValidator;
import it.uniroma3.siw.museo.model.Opera;
import it.uniroma3.siw.museo.service.ArtistaService;
import it.uniroma3.siw.museo.service.CollezioneService;
import it.uniroma3.siw.museo.service.OperaService;

@Controller
public class OperaController {

	@Autowired
	private OperaService operaService;
	@Autowired
	private OperaValidator operaValidator;
	@Autowired
	private ArtistaService artistaService;
	@Autowired
	private CollezioneService collezioneService;


	//Ritorna la lista delle opere
	@RequestMapping( value = "/opere", method = RequestMethod.GET)
	public String getOpere(Model model) {
		model.addAttribute("opere", this.operaService.getAll());
		return "opere";
	}


	//Ritorna una singola opera
	@RequestMapping(value = "/opera/{id}", method = RequestMethod.GET)
	public String getOpera(@PathVariable("id") Long id, Model model){
		model.addAttribute("opera", this.operaService.getById(id));
		return "opera";
	}


	//Cancella un'opera
	@RequestMapping(value="/admin/deleteOpera/{id}", method = RequestMethod.DELETE)
	public String deleteOpera(@PathVariable("id")Long id) {
		this.operaService.deleteOperaById(id);
		return "redirect:/opere";
	}


	//Metodi GET e POST per l'aggiunta di un'opera
	@RequestMapping(value = "/admin/opera", method = RequestMethod.GET)
	public String addOpera(Model model) {
		model.addAttribute("opera", new Opera());
		model.addAttribute("artista", this.artistaService.getAll());
		model.addAttribute("collezione", this.collezioneService.getAll());
		return "operaForm";
	}

	@RequestMapping(value = "/admin/opera", method = RequestMethod.POST)
	public String newOpera(@ModelAttribute("opera") Opera opera, 
			Model model, BindingResult bindingResult) {

		this.operaValidator.validate(opera, bindingResult);

		if (!bindingResult.hasErrors()) {

			if((opera.getArtista().getId()==0) && (opera.getCollezione().getId()==0)){
				opera.setArtista(null);
				opera.setCollezione(null);
				this.operaService.saveOpera(opera);
				model.addAttribute("opere", this.operaService.getAll());
				return "redirect:/opere";
			}
			
			else if(opera.getArtista().getId()==0) {
				opera.setArtista(null);
				this.operaService.saveOpera(opera);
				model.addAttribute("opere", this.operaService.getAll());
				return "redirect:/opere";
			}
			else if(opera.getCollezione().getId()==0) {
				opera.setCollezione(null);
				this.operaService.saveOpera(opera);
				model.addAttribute("opere", this.operaService.getAll());
				return "redirect:/opere";
			}
			else if((opera.getArtista().getId()==0) && (opera.getCollezione().getId()==0)){
				opera.setArtista(null);
				opera.setCollezione(null);
				this.operaService.saveOpera(opera);
				model.addAttribute("opere", this.operaService.getAll());
				return "redirect:/opere";
			}
			else {
				this.operaService.saveOpera(opera);
				model.addAttribute("opere", this.operaService.getAll());
				return "redirect:/opere";
			}
		}
		return "operaForm";
	}


	//Metodi GET e POST per la modifica di un'opera
	@RequestMapping(value ="/admin/opera/{id}", method = RequestMethod.GET)
	public String modifyOpera(@PathVariable("id")Long id, Model model) {
		Opera opera = operaService.getById(id);
		model.addAttribute("opera", opera);
		model.addAttribute("artista", this.artistaService.getAll());
		model.addAttribute("collezione", this.collezioneService.getAll());
		return "modificaOpera";				
	}

	@RequestMapping(value ="/admin/opera/{id}", method = RequestMethod.POST)
	public String modifyOpera(@ModelAttribute("opera") Opera opera, @PathVariable("id") String id ,Model model) {
		
		if((opera.getArtista().getId()==0) && (opera.getCollezione().getId()==0)){
			opera.setArtista(null);
			opera.setCollezione(null);
			this.operaService.saveOpera(opera);
			return "redirect:/opere";
		}
		else if(opera.getArtista().getId()==0) {
			opera.setArtista(null);
			this.operaService.saveOpera(opera);
			return "redirect:/opera/"+id;
		}
		else if(opera.getCollezione().getId()==0) {
			opera.setCollezione(null);
			this.operaService.saveOpera(opera);
			return "redirect:/opera/"+id;
		}
		else 
			this.operaService.saveOpera(opera);
		return "redirect:/opera/"+id;				
	}

	//Effettua una ricerca delle opere per anno
	@RequestMapping(value="/periodi", method= RequestMethod.GET)
	public String MostraAnni(Model model)
	{
		model.addAttribute("anni",this.operaService.getAnnate());
		return"periodi.html";
	}

	@RequestMapping(value="/opereAnno/{string}", method= RequestMethod.GET)
	public String opereAnno(@PathVariable("string") String dataRealizzazione, Model model) {
		model.addAttribute("opereAnno", this.operaService.getOpereAnno(dataRealizzazione));
		return "opereAnno.html";
	}

}
