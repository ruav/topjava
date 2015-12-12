package ru.javawebinar.topjava.model;

import java.io.Serializable;
import java.time.LocalDateTime;
/**
 * GKislin
 * 11.01.2015.
 */
public class UserMealWithExceed implements Serializable{

    private int id;
    private LocalDateTime dateTime;
    private String description;
    private int calories;
    private boolean exceed;

    public UserMealWithExceed() {
    }
    public UserMealWithExceed(Integer id, LocalDateTime dateTime, String description, int calories, boolean exceed) {
        this.id = id;
        this.dateTime = dateTime;
        this.description = description;
        this.calories = calories;
        this.exceed = exceed;
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
    public boolean isExceed() {
        return exceed;
    }

    @Override
    public String toString() {
        return "UserMealWithExceed{" +
                "dateTime=" + dateTime +
                ", description='" + description + '\'' +
                ", calories=" + calories +
                ", exceed=" + exceed +
                '}';
    }
}
