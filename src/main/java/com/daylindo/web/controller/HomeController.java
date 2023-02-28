package com.daylindo.web.controller;

import com.daylindo.dto.KeyValue;
import com.daylindo.model.Competence;
import com.daylindo.services.CompetenceService;
import com.daylindo.utils.ToolKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@SessionAttributes({"competence"})
@Controller
public class HomeController {
    @Autowired
    private CompetenceService competenceService;

    @Autowired
    @Qualifier("compValidator")
    private Validator validator;

    @RequestMapping(value = {"/index","/"}, method = RequestMethod.GET)
    public String home(Model model) {
        Competence comp = new Competence("");
        model.addAttribute("competence",comp);
        return "comp";
    }

    @RequestMapping(value = {"/index/{comp_id}"}, method = RequestMethod.GET)
    public String home(Model model,@PathVariable("comp_id") Long id) {
        Competence comp = competenceService.getById(id);
        if(comp==null)
            comp = new Competence("");
        model.addAttribute("competence",comp);
        return "comp";
    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String postComp(@Valid @ModelAttribute("competence")  Competence comp, final HttpServletRequest request, BindingResult br) {
        if(br.hasErrors()){
            return "comp";
        }

        String action  = request.getParameter("action");

        if(action.equals("0")){
            comp.init();
        }
        else if(action.equals("2")){
            competenceService.saveCompetence(comp);
            return "redirect:grid/"+comp.getId();
        }
        return "comp";
    }

    @ModelAttribute("niveaux")
    public List<KeyValue> niveau(){
        List<KeyValue> ret = new ArrayList<KeyValue>();
        ret.add(new KeyValue(0,"Select niveau"));
        for(int i = 1;i<20;i++){
            ret.add(new KeyValue(i,"Niveau "+i));
        }
        return ret;
    }

    @ModelAttribute("base_url")
    public String baseURL( HttpServletRequest request){
        return ToolKit.getBaseUrl(request);
    }

    @RequestMapping(value = {"/grid/{comp_id}"}, method = RequestMethod.GET)
    public String grid(Model model,@PathVariable("comp_id") Long id) {
        Competence comp = competenceService.getById(id);
        if(comp==null)
            comp = new Competence("");
        model.addAttribute("competence",comp);
        return "gridComp";
    }


    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }


}