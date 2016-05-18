/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package models;

import java.awt.image.BufferedImage;

/**
 *
 * @author Savanutul
 */
public class GymPackage {
    private final String name;
    private final String type;
    private final double price;
    private final String gymName;
    private final String description;
    private final BufferedImage image;
    //private final String imagePath; //save photo in file and just get the path ??????????
    private final boolean available;

    public GymPackage(String name, String type, double price, String gymName, String description, BufferedImage image/*, String imagePath*/, boolean available) {
        this.name = name;
        this.type = type;
        this.price = price;
        this.gymName = gymName;
        this.description = description;
        this.image = image;
        /*this.imagePath=imagePath;*/
        this.available = available;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public double getPrice() {
        return price;
    }

    public String getGymName() {
        return gymName;
    }

    public String getDescription() {
        return description;
    }

    public BufferedImage getImagePath() {
        return image;
    }
    
    /*public String getImagePath() {
        return imagePath;
    }*/

    public boolean isAvailable() {
        return available;
    }
    
}
