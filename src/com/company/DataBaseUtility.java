package com.company;
import java.sql.*;

public class DataBaseUtility {

    private Connection connection = null;
    private PreparedStatement statement;
    private ResultSet resultSet;


    public DataBaseUtility() {
        connectToDataBase();
    }

    private void connectToDataBase() {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/holidaymaker?user=root&password=mysql");
            // &serverTimezone=UTC
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void selectDestination(String destination) {

        try {
            statement = connection.prepareStatement("INSERT INTO accommodations " +
                    "(destination) VALUES (?)");
            statement.setString(1, destination);
            // statement.setString(2, facility_profile_id);
            statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void addRoomToDatabase(int accommodation_id,
                                  String room_size,
                                  int price_per_night) {

        try {
            statement = connection.prepareStatement("INSERT INTO rooms " +
                    "(accommodation_id, room_size, price_per_night) " +
                    "VALUES (?, ?, ?)");
            statement.setInt(1, accommodation_id);
            statement.setString(2, room_size);
            statement.setInt(3, price_per_night);
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void allAccommodationsInDatabase() {
        try {
            statement = connection.prepareStatement("SELECT destination, " +
                    "FROM accommodations ");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String roomInformation =
                        "DESTINATION: " + resultSet.getString("destination") + "\n" +
                                "_______________________________________" + "\n";
                System.out.println(roomInformation);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }


    public void filterRoomsInDatabase() {
        try {
            statement = connection.prepareStatement("SELECT rooms.id, accommodations.destination, " +
                    "rooms.room_size, rooms.price_per_night " +
                    "FROM rooms, accommodations " +
                    "GROUP BY destination;");

            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }

            if (resultSet.next()) {
                String filterRooms =
                        "ID: " + resultSet.getString("rooms.id") + "\n" +
                                "DESTINATION: " + resultSet.getString("destination") + "\n" +
                                "ROOM SIZE: " + resultSet.getString("room_size") + "\n" +
                                "PRICE: " + resultSet.getInt("price_per_night") + "\n" +
                                "_______________________________________" + "\n";
                System.out.println(filterRooms);
            } else {
                System.out.println("No rooms found. Please try with different choices.  " + "\n");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public void addCustomerToDatabase(String first_name, String last_name,
                                      String security_number) {

        try {
            statement = connection.prepareStatement("INSERT INTO guest " +
                    "(first_name, last_name, security_number) VALUES (?, ?, ?)");
            statement.setString(1, first_name);
            statement.setString(2, last_name);
            statement.setString(3, security_number);
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String searchCustomerByFirstNameAndLastName(String first_name, String last_name) {
        StringBuilder container = new StringBuilder();
        try {
            statement = connection.prepareStatement("SELECT id, first_name, last_name " +
                    "FROM guests WHERE first_name = ? AND last_name = ? ");
            statement.setString(1, first_name);
            statement.setString(2, last_name);

            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }


            while (resultSet.next()) {
                String roomInformation =
                        "_______________________________________" + "\n" +
                                "ID: " + resultSet.getString("id") + "\n" +
                                "FIRST NAME: " + resultSet.getString("first_name") + "\n" +
                                "LAST NAME: " + resultSet.getString("last_name") + "\n" +
                                "_______________________________________" + "\n";
                System.out.println(roomInformation);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        System.out.println(container);
        return container.toString();
    }

}