package com.egerton.dataIO;

import com.egerton.data.Medicine;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.StringTokenizer;

public class MedicineIO {
    private static ArrayList<Medicine> medicines = null;

    public static ArrayList<Medicine> getMedicines(String path)
    {
        medicines = new ArrayList<Medicine>();
        File file = new File(path);
        try
        {
            BufferedReader in =
                    new BufferedReader(
                            new FileReader(file));

            String line = in.readLine();
            while (line != null)
            {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() >= 8)
                {
                    int id = Integer.parseInt( t.nextToken());
                    String name = t.nextToken();
                    String genericName = t.nextToken();
                    String storeBox = t.nextToken();
                    int quantity = Integer.parseInt( t.nextToken());
                    String category = t.nextToken();
                    String sideEffects = t.nextToken();
                    String date = t.nextToken();

                    Medicine medicine = new Medicine();
                    medicine.setId(id);
                    medicine.setName(name);
                    medicine.setGenericName(genericName);
                    medicine.setStoreBox(storeBox);
                    medicine.setQuantity(quantity);
                    medicine.setCategory(category);
                    medicine.setSideEffects(sideEffects);
                    medicine.setExpiryDate(date);
                    medicines.add(medicine);
                }
                line = in.readLine();
            }
            in.close();
            return medicines;
        }
        catch(IOException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public static Medicine getMedicine(int medicineId, String path)
    {
        medicines = getMedicines(path);
        for (Medicine m : medicines)
        {
            if (medicineId == m.getId())
            {
                return m;
            }
        }
        return null;
    }

    public static boolean exists(int medicineId, String path)
    {
        medicines = getMedicines(path);
        for (Medicine m : medicines)
        {
            if (medicineId == m.getId())
            {
                return true;
            }
        }
        return false;
    }

    private static void saveMedicines(ArrayList<Medicine> medicines,
                                     String path)
    {
        try
        {
            File file = new File(path);
            PrintWriter out =
                    new PrintWriter(
                            new FileWriter(file));

            for (Medicine m : medicines)
            {
                out.println(m.toString());
            }

            out.close();
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
    }

    public static void insert(Medicine Medicine, String path)
    {
        medicines = getMedicines(path);
        medicines.add(Medicine);
        saveMedicines(medicines, path);
    }

    public static void update(Medicine medicine, String path)
    {
        medicines = getMedicines(path);
        for (int i = 0; i < medicines.size(); i++)
        {
            Medicine m = medicines.get(i);
            if ( medicine != null && m.getId() == medicine.getId())
            {
                medicines.set(i, medicine);
            }
        }
        saveMedicines(medicines, path);
    }

    public static void delete(Medicine medicine, String path)
    {
        medicines = getMedicines(path);
        for (int i = 0; i < medicines.size(); i++)
        {
            Medicine p = medicines.get(i);
            if (medicine != null &&
                    medicine.getId() == p.getId())
            {
                medicines.remove(i);
            }
        }
        saveMedicines(medicines, path);
    }
}
