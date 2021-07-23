package com.egerton.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class FileIO {
    //create a new file
    public void createFile(String fileName) {
        try {
            File file = new File(fileName);
            file.createNewFile();
        } catch (IOException exception){
            System.out.println("Error: "+ exception.getMessage());
        }

    }
    //write to a file
    public boolean writeToFile( String fileName, String data){
        boolean saved = false;
        try{
            FileWriter writer = new FileWriter( fileName);
            writer.write(data);
            writer.close();
            saved = true;
        } catch (IOException exception){
            saved = false;
            System.out.println("Error: "+ exception.getMessage());
        }
        return false;
    }
    //read from a file
    public String readFromFile( String fileName){
        String data = null;
        try{
            File file = new File( fileName);
            Scanner reader = new Scanner( file);
            while ( reader.hasNextLine()){
                data += reader.nextLine();
            }
        } catch (FileNotFoundException exception){
            data = null;
            System.out.println("Error: "+ exception.getMessage());
        }
        return data;
    }
}
