import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestingClasses
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
        System.out.println(i1.getUPC());
    }
}