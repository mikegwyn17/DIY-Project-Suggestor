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
        System.out.println("Creating a new plannagram");
        Store myStore = new Store();
        Shelf s1 = new Shelf(30, 300, LEFT, 1, 0);
        Item i1 = new Item(4,4,0,0, "2839948CE");
        System.out.println(i1.getUPC());
    }
}