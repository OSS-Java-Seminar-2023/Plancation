package com.incompatibleTypes.plancation.plancationapp.model;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
public class Request {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToMany
    @JoinColumn(name = "file_id")
    private Set<File> files = new HashSet<>();
    private LocalDateTime timeCreated;
    @OneToOne
    private Employee requester;
    @OneToOne
    private Employee approver;
}
