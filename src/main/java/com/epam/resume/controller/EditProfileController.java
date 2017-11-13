package com.epam.resume.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.epam.resume.form.LanguageForm;
import com.epam.resume.form.SkillForm;
import com.epam.resume.reposiory.storage.ProfileRepository;
import com.epam.resume.reposiory.storage.SkillCategoryRepository;
import com.epam.resume.service.StaticDataService;

@Controller
public class EditProfileController {
	
	@Autowired
	private StaticDataService staticDataService;

	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@Autowired
	private ProfileRepository profileRepository;

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getEditProfile() {
		return "edit";
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(profileRepository.findOne(1L).getSkills()));
		return gotoSkillsJSP(model);
	}
	
	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String saveEditSkills(@Valid @ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
        }
		//TODO Update skills 
		return "redirect:/mike-ross";
	}
	
	private String gotoSkillsJSP(Model model){
		model.addAttribute("skillCategories", skillCategoryRepository.findAll(new Sort("id")));
		return "edit/skills";
	}
	
	@RequestMapping(value = "/edit/languages", method = RequestMethod.GET)
	public String getEditLanguages(Model model) {
		model.addAttribute("languageForm", new LanguageForm(profileRepository.findOne(1L).getLanguages()));
		return gotoLanguagesJSP(model);
	}
	
	@RequestMapping(value = "/edit/languages", method = RequestMethod.POST)
	public String saveEditLanguages(@ModelAttribute("languageForm") LanguageForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return gotoLanguagesJSP(model);
        }
		//TODO Update skills 
		return "redirect:/mike-ross";
	}
	
	private String gotoLanguagesJSP(Model model){
		model.addAttribute("languageTypes",  staticDataService.getAllLanguageTypes());
		model.addAttribute("languageLevels", staticDataService.getAllLanguageLevels());
		return "edit/languages";
	}
}
