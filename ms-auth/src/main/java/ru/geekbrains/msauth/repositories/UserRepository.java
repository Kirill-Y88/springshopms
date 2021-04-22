package ru.geekbrains.msauth.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.geekbrains.msauth.entities.User;


public interface UserRepository extends JpaRepository<User, Integer> {

    User findByLogin(String login);

}