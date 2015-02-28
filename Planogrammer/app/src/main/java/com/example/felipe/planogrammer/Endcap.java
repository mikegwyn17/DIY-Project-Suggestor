public class Endcap extends Shelf
{
    int aisle1, aisle2;

    public Endcap(int a1, int a2, shelfType t)
    {
        try
        {
            if (!(validAisle(a1))
                throw new InvalidAisleException("Invalid aisle: " + a1);
             else if (!(validAisle(a1)))
                throw new InvalidAisleException("Invalid aisle: " + a2);
            this.aisle1 = a1;
            this.aisle2 = a2;
            this.type = t;
        }
        catch (InvalidAisleException e)
        {
            System.err.print(e.getMessage());
        }
    }
}