package com.daylindo.repository;

import com.daylindo.model.Competence;
import com.daylindo.model.Niveau;
import org.springframework.data.repository.CrudRepository;

public interface NiveauRepository<P> extends CrudRepository<Niveau,Long> {
}
