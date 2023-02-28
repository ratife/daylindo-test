package com.daylindo.model;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "niveau")
public class Niveau {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(name = "name")
    private String name;

    @Column(name = "niveau")
    private int niveau;


    @Column(name = "description")
    private String description;

    @ManyToOne
    @JoinColumn(name = "comp_id", insertable = false, updatable = false)
    private Competence competence;

    public Niveau() {
        super();
    }

    public Niveau(int niv) {
        niveau = niv;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNiveau() {
        return niveau;
    }

    public void setNiveau(int niveau) {
        this.niveau = niveau;
    }

    public Competence getCompetence() {
        return competence;
    }

    public void setCompetence(Competence competence) {
        this.competence = competence;
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
