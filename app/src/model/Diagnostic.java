/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

/**
 *
 * @author Giovanna
 * @author Lucas
 * @author mrPips
 * @author Rina
 * @credits Jureg
 */
public class Midia {

    public SimpleStringProperty title;
    public SimpleStringProperty type;
    public SimpleStringProperty thumbnail;
    public SimpleStringProperty sinopse;
    public SimpleIntegerProperty rating;
    public SimpleIntegerProperty duration;
    public SimpleStringProperty launchDate;
    public Date date;

    public Midia(String title, String type, String thumbnail,
                 String sinopse, int rating, int duration, Date date) {
        
        this.title = SimpleStringProperty(title);
        this.type = SimpleStringProperty(type);
        this.thumbnail = SimpleStringProperty(thumbnail);
        this.sinopse = SimpleStringProperty(sinopse);
        this.rating = SimpleIntegerProperty(rating);
        this.duration = SimpleIntegerProperty(duration);
        this.launchDate = SimpleStringProperty(date.ToString());
    }

    public void setTitle(String title) {this.title.set(title); }
    public void setType(String type) {this.type.set(type); }
    public void setThumbnail(String thumbnail) {this.thumbnail.set(thumbnail); }
    public void setSinopse(String sinopse) {this.sinopse.set(sinopse); }
    public void setRating(String rating) {this.rating.set(rating); }
    public void setDuration(String duration) {this.duration.set(duration); }

    public String getTitle() {return title.get(); }
    public String getType() {return type.get(); }
    public String getThumbnail() {return thumbnail.get(); }
    public String getSinopse() {return sinopse.get(); }
    public int getRating() {return rating.get(); }
    public int getDuration() {return duration.get(); }
}
