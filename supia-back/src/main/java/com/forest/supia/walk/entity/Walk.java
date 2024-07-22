package com.forest.supia.walk.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.sql.Timestamp;

@Entity
@Data
@RequiredArgsConstructor
@Table(name = "Walk")
public class Walk {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long userId;
    private Timestamp walkStart;
    private Timestamp walkEnd;
    private int distance;
}
