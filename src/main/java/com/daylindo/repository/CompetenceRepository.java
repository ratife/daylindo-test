package com.daylindo.repository;

import com.daylindo.model.Competence;
import org.springframework.data.repository.CrudRepository;

public interface CompetenceRepository<P> extends CrudRepository<Competence,Long> {
}
