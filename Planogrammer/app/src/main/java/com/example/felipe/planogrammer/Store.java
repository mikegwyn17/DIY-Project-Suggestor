import java.util.List;

public class Store
{
    int defaultAisleLength;
    int defaultAisleHeight;

    String shelfQuery = "SELECT shelf_id FROM tb_shelf WHERE shelf_length = $length AND shelf_height = " +
            "@height AND shelf_aisle1 = @a1 AND shelf_aisle2 = @a2 AND shelf_type = @type"
    String createShelfQuery = "INSERT INTO tb_shelves_in_store(store_id, shelf_id) VALUES (@store, @shelf)";


    public Store(int x, int y)
    {
        defaultAisleLength = x;
        defaultAisleHeight = y;
    }

    public int addShelf(Shelf shelf)
    {
        //
        //get id of newly created item and return it
    }

    public void removeShelf(int id)
    {
        //
    }

    public Shelf getShelf(int id)
    {
        //
    }
}