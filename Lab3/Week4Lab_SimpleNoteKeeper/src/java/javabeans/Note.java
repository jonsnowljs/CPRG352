/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabeans;

import java.io.Serializable;

/**
 *
 * @author Jiasheng
 */
public class Note implements Serializable{
    private String title = "";
    private String content = "";

    public Note() {
        this.title = "";
        this.content = "";
    }
    public Note(String title, String content) {
        this.title = title;
        this.content = content;
    }   
    

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    
}
