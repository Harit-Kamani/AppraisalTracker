package com.grownited.repository;

import com.grownited.entity.AppraisalEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AppraisalRepository extends JpaRepository<AppraisalEntity, Long> {
    List<AppraisalEntity> findByEmployeeId(Long employeeId);
}
