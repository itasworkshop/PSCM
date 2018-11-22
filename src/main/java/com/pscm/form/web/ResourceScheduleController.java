package com.pscm.form.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pscm.form.service.ResourceScheduleService;
import com.pscm.form.validator.ResourceScheduleFormValidator;

@Controller
public class ResourceScheduleController {

	private final Logger logger = LoggerFactory.getLogger(ResourceScheduleController.class);

	@Autowired
	ResourceScheduleFormValidator resourceScheduleFormValidator;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(resourceScheduleFormValidator);
	}

	private ResourceScheduleService resourceScheduleService;

	@Autowired
	public void setUserService(ResourceScheduleService userService) {
		this.resourceScheduleService = userService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		logger.debug("index()");
		return "redirect:/schedule";
	}

	// list page
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String showAllSchedule(Model model) {

		logger.debug("showAllSchedule()");
		model.addAttribute("schedules", resourceScheduleService.findAll());
		return "schedule/list";

	}

	@ExceptionHandler(EmptyResultDataAccessException.class)
	public ModelAndView handleEmptyData(HttpServletRequest req, Exception ex) {

		logger.debug("handleEmptyData()");
		logger.error("Request: {}, error ", req.getRequestURL(), ex);

		ModelAndView model = new ModelAndView();
		model.setViewName("schedule/show");
		model.addObject("msg", "schedule not found");

		return model;

	}

}