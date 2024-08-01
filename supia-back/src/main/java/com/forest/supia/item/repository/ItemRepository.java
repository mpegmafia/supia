package com.forest.supia.item.repository;



import com.forest.supia.item.dto.SpeciesResponse;
import com.forest.supia.item.entity.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {

    @Query(
            value = "SELECT " +
                    "new com.forest.supia.item.dto.SpeciesResponse(s.id, s.name, s.representative_img) " +
                    "FROM item i " +
                    "INNER JOIN species s ON s.id = i.species_id " +
                    "WHERE i.member_id = :memberId AND s.category = :category " +
                    "GROUP BY s.id",
            nativeQuery = true
    )
    List<SpeciesResponse> speciesResponseListJPQL(@Param("memberId") long memberId, @Param("category") String category);
}
