package org.home.servletdemo.task;

import java.util.ArrayList;
import java.util.List;

public class TaskDao {

    private static TaskDao instance = null;
    private List<Task> tasks = new ArrayList<>();

    private TaskDao() {
    }

    static TaskDao getInstance() {
        if (instance == null) {
            synchronized (TaskDao.class) {
                if (instance == null) {
                    instance = new TaskDao();
                    return instance;
                }
            }
        }
        return instance;
    }

    void addTask(Task task) {
        tasks.add(task);
    }

    List<Task> findAllTasks() {
        return tasks;
    }

    void removeTask(Long id) {
        boolean b = tasks.stream().anyMatch(task -> task.getId().equals(id));
        if (b) {
            tasks.remove(id);
        } else {
            throw new IllegalStateException("taks not found");
        }

    }
}
