package com.test.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class DAO {
    public static boolean addMember(
            String firstname,
            String lastname,
            String addressone,
            String addresstwo,
            String email,
            String phone,
            String city,
            String state,
            String zipcode,
            String country) {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Calendar cal = Calendar.getInstance();
            String date = sdf.format(cal.getTime());

            for(int i=0; i <= firstname.length() - 1; i++) {
                char result = firstname.charAt(i);
                if((Character.isWhitespace(result)) || (Character.isDigit(result))) {
                    return false;
                }
            }

            for(int i=0; i <= lastname.length() - 1; i++) {
                char result = lastname.charAt(i);
                if ((Character.isWhitespace(result)) || (Character.isDigit(result))) {
                    return false;
                }
            }

            for(int i=0; i <= phone.length() - 1; i++) {
                char result = phone.charAt(i);
                if ((Character.isWhitespace(result)) || (Character.isLetter(result))) {
                    return false;
                }
            }

            for(int i=0; i <= zipcode.length() - 1; i++) {
                char result = zipcode.charAt(i);
                if ((Character.isWhitespace(result)) || (Character.isLetter(result))) {
                    return false;
                }
            }

            String addMemberCommand = "INSERT INTO members " +
                    "(firstname, lastname, addressone, addresstwo, email, " +
                    "phone, city, state, zipcode, country, date) " +
                    "VALUES ('" +
                    firstname + "', '" +
                    lastname + "', '" +
                    addressone + "', '" +
                    addresstwo + "', '" +
                    email + "', '" +
                    phone + "', '" +
                    city + "', '" +
                    state + "', '" +
                    zipcode + "', '" +
                    country + "', '" + date + "')";

            Statement st = mysqlConnection.createStatement();

            int result = st.executeUpdate(addMemberCommand);

            return true;

        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public static ArrayList<addMember> getMembers() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(

                    DAOCredentials.DB_ADDRESS,
                    DAOCredentials.USERNAME,
                    DAOCredentials.PASSWORD);

            String getMembersCommand = "SELECT firstname, lastname, addressone, addresstwo, email, phone, city, state, country, zipcode, date FROM members Order by date DESC ;";

            Statement readMembers = mysqlConnection.createStatement();

            ResultSet result = readMembers.executeQuery(getMembersCommand);

            ArrayList<addMember> memberList = new ArrayList<addMember>();

            while (result.next()) {
                addMember temp = new addMember(result.getString(1), result.getString(2), result.getString(3), result.getString(4),
                        result.getString(5), result.getString(6), result.getString(7), result.getString(8), result.getString(9), result.getString(10), result.getString(11));

                memberList.add(temp);
            }

            return memberList;

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
