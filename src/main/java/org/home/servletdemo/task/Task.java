package org.home.servletdemo.task;

public class Task {

    private final Long id;

    private String title;

    private String details;
    public Task(Long id, String title , String details) {
        this.id = id;
        this.title = title;
        this.details = details;
    }

    public Long getId() {
        return id;
    }

    public String getDetails() {
        return details;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDetails(String details) {
        this.details = details;
    }

}
