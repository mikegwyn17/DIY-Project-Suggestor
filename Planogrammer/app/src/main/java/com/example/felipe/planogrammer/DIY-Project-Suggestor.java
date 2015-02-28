import java.lang.ClassNotFoundException;
import java.lang.Exception;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DIY-Project-Suggestor
{
    public static void main(String[] Args)
    {
        Store workingStore;
        Shelf workingShelf;
        Item workingItem;
        System.out.println("Creating a new plannagram");
        workingStore = new Store();
        workingShelf = new Shelf(30, 300, LEFT, 1, 0);
        workingStore.addShelf(workingShelf);
        workingItem = new Item(4,4,0,0, "2839948CE");

        try
        {
            connectDB();
        }
        catch (Exception e)
        {
            e.printStackTrace();
            System.exit(-6);
        }
        e

    }
}

private static void connectDB() throws ClassNotFoundException, SQLException
{
    System.out.println("beginning connection");
    String connectString = "jdbc:mysql://localhost//phpmyadmin/tbl_structure.php#PMAURL-46:tbl_relation.php?db=db_stores&table=tb_items_on_shelves&server=1&target=&token=f108755e234bbd988b97f966da534a90";
    Connection connect = DriveManager.getConnection(connectString);
}