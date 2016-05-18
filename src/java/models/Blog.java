/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package models;

/**
 *
 * @author Savanutul
 */
public class Blog {
    private final String name;
    private final String author;
    private final String type;
    private final String path;
    private final boolean isPublic;

    public Blog(String name,String author, String type, String path, boolean isPublic) {
        this.name = name;
        this.author = author;
        this.type = type;
        this.path = path;
        this.isPublic = isPublic;
    }

    public String getName() {
        return name;
    }
    
    public String getAuthor() {
        return author;
    }

    public String getType() {
        return type;
    }

    public String getPath() {
        return path;
    }
    
    public boolean isPublic() {
        return isPublic;
    }
}
