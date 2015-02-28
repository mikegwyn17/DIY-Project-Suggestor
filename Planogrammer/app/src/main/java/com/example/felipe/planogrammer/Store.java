import java.util.List;

public class Store
{
    int defaultAisleLength;
    int defaultAisleHeight;

    public Store(int x, int y)
    {
        defaultAisleLength = x;
        defaultAisleHeight = y;
        aisleNumbers = new List<int>();
    }

    public int getNumberOfAisles()
    {
        return this.aisleNumbers.size();
        //query
    }

    public boolean validAisle(int aisle)
    {
        return aisleNumbers.contains(aisle);
        //query
    }
}