package com.daylindo.model;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "competence")
public class Competence {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min=2, max=30)
    @Column(name = "name")
    private String name;

    @Column(name = "nbr_niveau")
    private int nbrNiveau;

    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "comp_id")
    private List<Niveau> niveauList;

    public Competence() {
        super();
    }

    public Competence(String name) {
        this.name = name;
    }

    public void init(int niv){
        this.nbrNiveau = niv;
        niveauList = new ArrayList<>();
        for(int i = 0;i<niv;i++){
            if(niveauList.size()>=i){
                niveauList.add(new Niveau(i+1));
            }
        }
    }

    public void init(){
        this.init(this.nbrNiveau);
    }

    public List<Niveau> getNiveauList() {
        return niveauList;
    }

    public void setNiveauList(List<Niveau> niveauList) {
        this.niveauList = niveauList;
    }

    public int getNbrNiveau() {
        return nbrNiveau;
    }

    public void setNbrNiveau(int nbrNiveau) {
        this.nbrNiveau = nbrNiveau;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
