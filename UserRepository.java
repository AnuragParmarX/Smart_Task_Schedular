package com.anurag.scheduler.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.anurag.scheduler.entity.User;

public interface UserRepository extends JpaRepository<User,Long>{

}
