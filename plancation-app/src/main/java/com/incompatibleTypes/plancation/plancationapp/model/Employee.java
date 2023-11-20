package com.incompatibleTypes.plancation.plancationapp.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String mail;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "department_id")
    private Department department;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "request_id")
    private Set<Request> requests = new HashSet<>();
    @ManyToOne
    @JoinColumn(name = "vacation_day_id")
    private VacationDay minimalVacationDay;
    //private int total_vacation_days; // query koji na osnovu osnovnog i bonusa daje ovo...nece bit field?
    @ManyToMany
    @JoinTable(
            name = "minimalVacationDay_employee",
            joinColumns = @JoinColumn(name = "bonus_vacation_day_id"),
            inverseJoinColumns = @JoinColumn(name = "employee_id")
    )
    private Set<BonusVacationDay> bonusVacationDays = new HashSet<>();
    private LocalDateTime dateEmployed;
}
