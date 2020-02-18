package com.company;
import java.util.Scanner;


// söka efter lediga rum med specificerade sökkriterier-
//    mellan specificerade datum och
//    boka dem
// registrera in kunden.


public class SubMenu {

    public SubMenu() {
        Decision();
    }

    public void Decision() {

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
                    System.out.println("STOCKHOLM - Capital of Sweden");
                    String c1 = input.next();
                    if (!userInput.matches("[0-3]+")) {
                        System.out.println("Please enter a digit between 0-2. Proceed with <ENTER>");
                    }
                    //awaitDestinationChoice();
                    break;

                case "2":
                    System.out.println("GÖTEBORG - City of fishing");
                    break;

                case "3":
                    System.out.println("MALMÖ - Almost Denmark");
                    break;

                case "4":
                    System.out.println("ÅRE - Steep hills and cold weather");
                    break;

                case "5":
                    System.out.println("KIRUNA - Where the northern lights always shine");
                    break;
                    
                case "0":
                    System.out.println("\nReturning to main menu, please wait...");
                    subMenuRunning = false;
                    break;
                default:
            }
        }
    }
}