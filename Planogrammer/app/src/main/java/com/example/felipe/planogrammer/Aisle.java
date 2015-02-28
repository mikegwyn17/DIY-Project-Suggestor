public class ce extends Shelf
{
    int aisle;

    public Aisle(int l, int h, int a; aisleType type)
    {
        try
        {
            if (!(validAisle(a)))
                throw new InvalidAisleException("Invalid aisle:" + a);
            this.length = l;
            this.height = h;
            this.aisle = a;
            this.type = type;
        }
        catch (InvalidAisleException e)
        {
            System.err.print(e.getMessage());
        }
    }

    public Aisle(aisleType type)
    {
        this.length = defaultAisleLength;
        this.height= defaultAisleHeight;
        this.type = type;
    }

    public void writeAisle()
    {

    }
}