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
public class Client {
    private final String name;
    private final String uname;
    //private final String pass;  ///do we really need the pass
    private final String email;
    private final String gender;
    private final String tel;
    private final String country;
    private final boolean sub;

    public Client(String name, String uname, /*String pass,*/ String email, String gender, String tel, String country, boolean sub) {
        this.name = name;
        this.uname = uname;
        //this.pass = pass;
        this.email = email;
        this.gender = gender;
        this.tel = tel;
        this.country = country;
        this.sub = sub;
    }

    public String getName() {
        return name;
    }

    public String getUname() {
        return uname;
    }

    public String getEmail() {
        return email;
    }

    public String getGender() {
        return gender;
    }

    public String getTel() {
        return tel;
    }

    public String getCountry() {
        return country;
    }

    public boolean isSub() {
        return sub;
    }
    
}
