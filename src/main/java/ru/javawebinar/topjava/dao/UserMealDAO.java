package ru.javawebinar.topjava.dao;

import ru.javawebinar.topjava.model.UserMeal;
import ru.javawebinar.topjava.model.UserMealWithExceed;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Created by Ruav on 08.12.2015.
 */
public interface UserMealDAO {
    void create(LocalDateTime localDateTime, String description, Integer calory);
    void update(Integer id, LocalDateTime localDateTime, String description, Integer calory);
    void delete(Integer id);
    UserMeal getUserMeal (Integer id);
    List<UserMealWithExceed> display(LocalDateTime startTime, LocalDateTime endTime);
}
