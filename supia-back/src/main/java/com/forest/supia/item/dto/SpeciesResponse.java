package com.forest.supia.item.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class SpeciesResponse {
    @Id @GeneratedValue
    private Long speciesId;
    private String speciesName;
    private String representativeImg;
}
