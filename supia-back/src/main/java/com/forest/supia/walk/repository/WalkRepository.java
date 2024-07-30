package com.forest.supia.walk.repository;

import com.forest.supia.member.model.Member;
import com.forest.supia.walk.dto.WalkDto;
import com.forest.supia.walk.entity.Walk;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WalkRepository extends JpaRepository<Member, Long>  {

    Long save(Walk walk);

}
