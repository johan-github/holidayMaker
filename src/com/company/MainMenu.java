package com.company;
import java.util.Scanner;

public class MainMenu {

    public static DataBaseUtility dataBaseUtility;

    public MainMenu(){
        Choices();
    }


    public void Choices() {
        while (true) {
            System.out.println("_____________ Holiday Maker _____________\n"
                    + "Please make a choice down below, select with <ENTER>:\n"
                    + "[1] Register new customer"
                    + "[2] Make a new reservation\n"
                    + "[3] Manipulate a current reservation\n"
                    + "[0] Shut down program");

            Scanner input = new Scanner(System.in);
            String option = input.next();

            if (!option.matches("[0-3]+")) {
                System.out.println("Choice invalid!\n\nPlease enter a digit between 0-3. Proceed with <ENTER>");
            }

            switch (option) {

                case "1":
                    System.out.println("*************************  REGISTER NEW CUSTOMER  *************************");
                    registerNewCustomer();
                    System.out.println("Registration complete!\nReturning to main menu...");
                    break;


                case "2":
                    nextMenu();
                    break;


                case "3":
                    System.out.println("*******************************\n" +
                            "Enter the booking ID of the reservation you wish to manipulate");
                    // Use contain / toLowerCase in this case.
                    break;


                case "0":
                    System.out.println("Shutting down program, please wait...");
                    System.exit(0);
                default:
            }
        }
    }
    public void nextMenu(){
        new SubMenu();
    }

    public int registerNewCustomer(){
        System.out.println("Please enter the FIRST NAME of the customer: ");
        Scanner scanner = new Scanner(System.in);
        String customerFirstName = scanner.nextLine();
        System.out.println("Please enter the LAST name of the customer: ");
        String customerLastName = scanner.nextLine();
        System.out.println("Please enter the SECURITY-NUMBER of the customer " +
                "(as 'YYYY-MM-DD-XXXX', INCLUDE DASHES): ");
        String customerSecNumber = scanner.nextLine();

         dataBaseUtility.addCustomerToDatabase(customerFirstName, customerLastName, customerSecNumber);
        String guestID = dataBaseUtility.searchCustomerByFirstNameAndLastName(customerFirstName, customerLastName);
        return Integer.parseInt(guestID);




    }

}
