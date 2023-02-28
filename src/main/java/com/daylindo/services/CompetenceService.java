package com.daylindo.services;

import com.daylindo.model.Competence;
import com.daylindo.repository.CompetenceRepository;
import com.daylindo.repository.NiveauRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CompetenceService {

    @Autowired
    private CompetenceRepository competenceRepository;

    @Autowired
    private NiveauRepository niveauRepository;
    @Transactional
    public List<Competence> getAllCompetence(){
        return (List<Competence>) competenceRepository.findAll();
    }
    @Transactional
    public Competence getById(Long id){
        return (Competence) competenceRepository.findOne(id);
    }
    @Transactional
    public boolean saveCompetence(Competence comp){
        return competenceRepository.save(comp)!=null;
    }
}
