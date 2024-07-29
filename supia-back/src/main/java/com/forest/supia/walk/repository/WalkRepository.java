package com.forest.supia.walk.repository;

import com.forest.supia.walk.dto.WalkDto;
import com.forest.supia.walk.entity.Walk;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class WalkRepository {

    private final EntityManager em;


    public void save(Walk walk) {

        em.persist(walk);
    }

}
