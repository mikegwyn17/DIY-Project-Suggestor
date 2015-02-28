public class Item
{
    String UPC;
    int ID, length, height, xPos, yPos;

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
}