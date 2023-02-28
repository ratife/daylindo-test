package com.daylindo.web.controller;

import com.daylindo.dto.KeyValue;
import com.daylindo.model.Competence;
import com.daylindo.services.CompetenceService;
import com.daylindo.utils.ToolKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
public class WsController {
    @Autowired
    private CompetenceService competenceService;

    @RequestMapping(value = {"ws/competences"}, method = RequestMethod.GET)
    public List<Competence> getCompetences() {
        return competenceService.getAllCompetence();
    }

    @RequestMapping(value = {"ws/competence/{id}"}, method = RequestMethod.GET)
    public Competence findCompetById(@PathVariable("id") Long id) {
        return competenceService.getById(id);
    }
}