/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package models;

import java.util.ArrayList;

/**
 *
 * @author Savanutul
 */
public class Data {
    private ArrayList<Blog> blog;
    private ArrayList<GymPackage> gympackages;

    public Data(ArrayList<Blog> blog, ArrayList<GymPackage> gympackages) {
        this.blog = blog;
        this.gympackages = gympackages;
    }

    public ArrayList<Blog> getBlog() {
        return blog;
    }

    public void setBlog(ArrayList<Blog> blog) {
        this.blog = blog;
    }

    public ArrayList<GymPackage> getGympackages() {
        return gympackages;
    }

    public void setGympackages(ArrayList<GymPackage> gympackages) {
        this.gympackages = gympackages;
    }
    
    
}
