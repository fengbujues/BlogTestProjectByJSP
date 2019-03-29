package org.blog.entity;


public class Admin {

  private long id;
  private String username;
  private String password;
  private String nickname;
  private String phone;
  private String email;
  private String img;



  //测试代码
  @Override
  public String toString() {
    return "Admin{" +
            "id=" + id +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", nickname='" + nickname + '\'' +
            '}';
  }

  public Admin(String username, String password, String nickname, String phone, String email) {
    this.username = username;
    this.password = password;
    this.nickname = nickname;
    this.phone = phone;
    this.email = email;
  }

  public Admin() {
  }

  public Admin(long id, String username, String password, String nickname, String phone, String email, String img) {

    this.id = id;
    this.username = username;
    this.password = password;
    this.nickname = nickname;
    this.phone = phone;
    this.email = email;
    this.img = img;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
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


  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

}
