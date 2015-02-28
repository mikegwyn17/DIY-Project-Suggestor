import java.util.List;

public class Shelf extends Store
{
    int length, height, aisle1, aisle2;
    List<Item> items;
    enum shelfType
    {
        LEFT, RIGHT, FRONT, BACK;
    }
    shelfType type;

    public Shelf(int l, int h, shelfType type, a1, a2)
    {
        this.length = l;
        this.height = h,
        this.type = type;
        this.aisle1 = a1;
        this.aisle2 = a2;
    }

    public void addItem(int xPos, int yPos, int x, int y)
    {
        //put anchor at (xPos, yPos)
        //take up area for height and width
    }

    //database functions
    public void writeShelf()
    {

    }

    public Shelf getShelfByID(int id)
    {

    }


}