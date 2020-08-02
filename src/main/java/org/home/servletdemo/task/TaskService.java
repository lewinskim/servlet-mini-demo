package org.home.servletdemo.task;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class TaskService {
    private static TaskService instance = null;
    private AtomicLong counter = new AtomicLong(0);
    private final TaskDao taskDao = TaskDao.getInstance();

    private TaskService() {
    }

    public static TaskService getInstance() {
        if (instance == null) {
            synchronized (TaskService.class) {
                if (instance == null) {
                    instance = new TaskService();
                }
            }
        }
        return instance;
    }

    public void RegisterTask(String title, String taskDetails) {
        Task task = new Task(counter.incrementAndGet(), title , taskDetails);
        taskDao.addTask(task);
    }

    public List<Task> getAllTasks() {
        return taskDao.findAllTasks();
    }

    public Task getById(Long taskId) {
        return taskDao.findAllTasks().stream()
                .filter(task -> task.getId().equals(taskId))
                .findFirst().orElseThrow(()-> new IllegalStateException("Given task not found"));
    }

    public void deleteTask(Long id){
        taskDao.removeTask(id);
    }

}
