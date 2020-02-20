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
                System.out.println("Choice invalid!\n\nPlease enter a digit between 0-2. Proceed with <ENTER>");
            }

            switch (option) {

                case "1":
                    nextMenu();
                    break;


                case "2":
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

}
