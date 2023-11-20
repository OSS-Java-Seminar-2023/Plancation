package com.incompatibleTypes.plancation.plancationapp.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
@Entity
public class BonusVacationDay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Lob
    private String description;
    private int numberOfDays;
    @ManyToMany(mappedBy = "bonusVacationDays")
    private Set<Employee> employees;
    private int precedingYearVacationDays;
}
