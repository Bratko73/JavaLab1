package com.stankin.lablaptevak.database;

import java.util.HashMap;
import java.util.Map;

public class DataBase {
    private static Map<String,User> users = new HashMap<>();

    public static boolean checkPass(String name,String pass){
        User user = users.get(name);
        if(user != null){
            if(pass.equals(user.getPass()))
                return true;
            else
                return false;
        }
        else{
            return false;
        }

    }

    public static boolean addUser(User user){
        String name = user.getName();
        if (!users.containsKey(name)) {
            users.put(name,user);
            return true;
        }
        else
            return false;
    }
}