package ru.javawebinar.topjava.model;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * GKislin
 * 11.01.2015.
 */
public class UserMeal implements Serializable{



    private int id;
    private LocalDateTime dateTime;
    private String description;
    private int calories;

    public UserMeal() {
    }
    public UserMeal(Integer id, LocalDateTime dateTime, String description, int calories) {
        this.id = id;
        this.dateTime = dateTime;
        this.description = description;
        this.calories = calories;
    }

    public int getId() {
        return id;
    }
    public LocalDateTime getDateTime() {
        return dateTime;
    }
    public String getDescription() {
        return description;
    }
    public int getCalories() {
        return calories;
    }

    @Override
    public String toString() {
        return "UserMeal{" +
                "id=" + id +
                "dateTime=" + dateTime +
                ", description='" + description + '\'' +
                ", calories=" + calories +
                '}';
    }
}
