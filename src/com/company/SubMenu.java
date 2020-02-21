package com.company;
import java.util.Scanner;

public class SubMenu {

    public SubMenu() {
        decision();
    }

    public void decision() {

        boolean subMenuRunning = true;

        while (subMenuRunning) {

            System.out.println("" +
                    "\n***************************************************************\n" +
                    "Please select a destination using [1]-[5]" +
                    ", or return to previous menu with [0]. Proceed with <ENTER>\n" +
                    "[1] Stockholm\n" +
                    "[2] Göteborg\n" +
                    "[3] Malmö\n" +
                    "[4] Åre\n" +
                    "[5] Kiruna\n" +
                    "[0] Return");

            Scanner input = new Scanner(System.in);
            String userInput = input.next();

                if (!userInput.matches("[0-5]+")) {
                    System.out.println("Choice invalid!\n\nPlease enter a digit between 0-2. Proceed with <ENTER>");
                }

            switch (userInput) {
                case "1":
                    System.out.println("STOCKHOLM");
                    String c1 = input.nextLine();
                    MainMenu.dataBaseUtility.selectDestination(c1);
                    dates();
                    break;

                case "2":
                    System.out.println("GÖTEBORG");
                    dates();
                    break;

                case "3":
                    System.out.println("MALMÖ");
                    dates();
                    break;

                case "4":
                    System.out.println("ÅRE");
                    dates();
                    break;

                case "5":
                    System.out.println("KIRUNA");
                    dates();
                    break;

                case "0":
                    System.out.println("Returning to main menu, please wait...\n");
                    subMenuRunning = false;
                    break;
                default:
            }
        }
    }

    public void dates(){
        System.out.println();
        System.out.println("Please enter the dates of which the customer wish to CHECK IN, " +
                "as such 'YYYY-MM-DD'. Proceed with <ENTER>\n");
        ifUserWantsToReturnToPrevious();
        Scanner scanner = new Scanner(System.in);
        String checkInDate = scanner.nextLine();
        sendUserToSubMenu(checkInDate);
        System.out.println("Thank you, you entered: " + checkInDate + "\n\n" +
                "Please enter the date of which the customer wish to CHECK OUT, " +
                "as such 'YYYY-MM-DD'. Proceed with <ENTER>\n");
        ifUserWantsToReturnToPrevious();
        String checkOutDate = scanner.nextLine();
        sendUserToSubMenu(checkOutDate);
        System.out.println("Thank you, you entered: " + checkOutDate + "\n");
        rooms();
    }
    public void rooms(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("How many rooms do you wish to reserve? \n" +
                "Please select [1]-[99]. If you wish to reserve more than nine" +
                " rooms, please type in 'more'. Proceed with <ENTER>");
        String numOfRooms = scanner.nextLine();
        if (!numOfRooms.matches("[0-99]+")){
            System.out.println("Choice invalid!\nPlease enter a digit between 1-99,");
            rooms();
        }

        System.out.println("You have selected" + " ["+numOfRooms+"] " + "rooms.");
    }

    public void ifUserWantsToReturnToPrevious() {
        System.out.println("(If you wish to return to previous menu," +
                " press [0])");
    }
    public void sendUserToSubMenu(String userInput) {
        if (userInput.matches("[0]")) {
            decision();
        }
    }



        // XXXXXX

}