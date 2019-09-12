package entity;

import com.mysql.cj.protocol.Message;

import java.text.MessageFormat;

/**
 * Demo class
 *
 * @author liurongsong
 * @datetime 2019/7/25 16:09
 */
public class User {
    private String userId;
    private String userPassword;
    private String userName;
    private int userBalance;
    private String userEmail;
    private String userTelephone;
    private int userType;

    public User() {
    }

    public User(String userId, String userPassword, String userName, int userBalance, String userEmail, String userTelephone, int userType) {
        this.userId = userId;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userBalance = userBalance;
        this.userEmail = userEmail;
        this.userTelephone = userTelephone;
        this.userType = userType;
    }

    @Override
    public String toString() {
        return MessageFormat.format("[userId:{0},userPassword:{1},userName:{2},userBalance:{3},userEmail:{4},userTelephone:{5},userType:{6}]", userId, userPassword, userName, userBalance, userEmail, userTelephone, userType);
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserBalance() {
        return userBalance;
    }

    public void setUserBalance(int userBalance) {
        this.userBalance = userBalance;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }
}
