package edu.eci.arsw.saleit.persistence.repo;

import edu.eci.arsw.saleit.model.Articulo;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ArticuloRepo extends JpaRepository<Articulo, Integer> {

}