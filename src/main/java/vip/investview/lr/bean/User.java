package vip.investview.lr.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class User implements Serializable {
    private static final long serialVersionUID = -3928626797045522745L;

    private Integer id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Byte image;
    private Integer gender;
    private Date created_Time;
    private Date modified_Time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Byte getImage() {
        return image;
    }

    public void setImage(Byte image) {
        this.image = image;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Date getCreated_Time() {
        return created_Time;
    }

    public void setCreated_Time(Date created_Time) {
        this.created_Time = created_Time;
    }

    public Date getModified_Time() {
        return modified_Time;
    }

    public void setModified_Time(Date modified_Time) {
        this.modified_Time = modified_Time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (!id.equals(user.id)) return false;
        if (!username.equals(user.username)) return false;
        if (!password.equals(user.password)) return false;
        if (!email.equals(user.email)) return false;
        if (!phone.equals(user.phone)) return false;
        if (!image.equals(user.image)) return false;
        if (!gender.equals(user.gender)) return false;
        if (!created_Time.equals(user.created_Time)) return false;
        return modified_Time.equals(user.modified_Time);
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + username.hashCode();
        result = 31 * result + password.hashCode();
        result = 31 * result + email.hashCode();
        result = 31 * result + phone.hashCode();
        result = 31 * result + image.hashCode();
        result = 31 * result + gender.hashCode();
        result = 31 * result + created_Time.hashCode();
        result = 31 * result + modified_Time.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", image=" + image +
                ", gender=" + gender +
                ", created_Time=" + created_Time +
                ", modified_Time=" + modified_Time +
                '}';
    }
}
