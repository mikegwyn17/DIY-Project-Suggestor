import java.util.List;

public class Shelf extends Store
{
    int ID, length, height, aisle1, aisle2;
    List<Item> items;
    char type;
    String lengthQuery = "SELECT shelf_length FROM tb_shelf WHERE item_id = @id";
    String heightQuery = "SELECT shelf_height FROM tb_shelf WHERE item_id = @id";
    String a1Query = "SELECT shelf_aisle1 FROM tb_shelf WHERE item_id = @id";
    String a2Query = "SELECT shelf_aisle2 FROM tb_shelf WHERE item_id = @id";
    String createItemQuery = "INSERT INTO tb_items_on_shelf (shelf_id, item_id) VALUES (@shelf, @item)";

    public Shelf(int l, int h, char type, a1, a2)
    {
        this.length = l;
        this.height = h,
        this.type = type;
        this.aisle1 = a1;
        this.aisle2 = a2;
    }

    public void addItem(Item item)
    {
        //put anchor at (xPos, yPos)
        //take up area for height and width
    }

    //database functions

    static Shelf getShelf(int id)
    {
        //
        int length, height, aisle1, aisle2;
        char type;
        length; = //length query
        height; //= height query
        aisle1; //= a1 query
        aisle2; //= a2 query
        type; //= type query
        return Shelf(length, height, aisle1, aisle2, type);
    }

    public int addItem()
    {
        //get ID of newly created entity and return it
    }

    public void setID(int id)
    {
        this.ID = id;
    }

}