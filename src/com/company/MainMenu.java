package com.company;
import java.util.Scanner;

public class MainMenu {


    public MainMenu(){
        Choices();
    }


    public void Choices() {
        while (true) {
            System.out.println("_____________ Holiday Maker _____________\n"
                    + "Please make a choice down below, select with <ENTER>:\n"
                    + "[1] Make a new reservation\n"
                    + "[2] Manipulate a current reservation\n"
                    + "[0] Shut down program");

            Scanner input = new Scanner(System.in);
            String option = input.next();

            if (!option.matches("[0-3]+")) {
                System.out.println("Please enter a digit between 0-2. Proceed with <ENTER>");
            }

            switch (option) {


                case "1":
                    System.out.println("\n*******************************\n" +
                            "Please select a destination using [1]-[5] " +
                            "(or go back with [0]), proceed with <ENTER>\n" +
                            "[1] Stockholm\n" +
                            "[2] Göteborg\n" +
                            "[3] Malmö\n" +
                            "[4] Åre\n" +
                            "[5] Västerås\n" +
                            "[0] Return");
                    String c1 = input.next();
                    //awaitDestinationChoice();
                    break;


                case "2":
                    System.out.println("*******************************\n" +
                            "Enter the booking ID of the reservation you wish to manipulate");
                    String c2 = input.nextLine();
                    break;


                case "0":
                    System.out.println("Shutting down program, please wait...");
                    System.exit(0);
                default:
            }
        }
    }
}
