package edu.eci.arsw.saleit.persistence.repo;

import edu.eci.arsw.saleit.model.Puja;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PujaRepo extends JpaRepository<Puja, Integer> {
}