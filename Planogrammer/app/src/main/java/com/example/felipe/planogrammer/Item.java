public class Item
{
    String UPC;
    int ID, length, height, xPos, yPos;
    String lenghtQuery = "SELECT item_length FROM tb_time WHERE item_id = @id";
    String heightQuery = "SELECT item_height FROM tb_time WHERE item_id = @id";
    String xPosQuery = "SELECT item_xPos FROM tb_time WHERE item_id = @id";
    String yPosQuery = "SELECT item_yPos FROM tb_time WHERE item_id = @id";

    public Item(int l, int h, int x, int y, String upc)
    {
        this.length = l;
        this.height = h;
        this.xPos = x;
        this.yPos = y;
        this.UPC = upc;
    }

    public int getID()
    {
        return this.ID;
    }

    public String getUPC()
    {
        return this.UPC;
    }

    public Item getItem(int id)
    {
        //
        int length, height, xPos, yPos;
        length; //= length query
    }

    public void writeItem()
    {
        //
    }

    public void setUPC(String upc)
    {
        this.UPC = upc;
    }

}