/* Simulates a physical device that performs (signed) subtraction on
 * a 32-bit input.
 *
 * Author: Parker Gabel
 */

public class Sim1_SUB
{
	public void execute()
	{
	    complement.in = b;
	    complement.execute();
	    adder.a = a;
	    adder.b = complement.out;
	    adder.execute();
	    sum = adder.sum;
	}



	// --------------------
	// Don't change the following standard variables...
	// --------------------

	// inputs
	public RussWire[] a,b;

	// output
	public RussWire[] sum;

	// --------------------
	// But you should add some *MORE* variables here.
	// --------------------

    private Sim1_2sComplement complement;
    private Sim1_ADD adder;


	public Sim1_SUB()
	{
	    a = new RussWire[32];
	    b = new RussWire[32];
	    sum = new RussWire[32];
	    complement = new Sim1_2sComplement();
	    adder = new Sim1_ADD();
	    for(int i = 0; i < 32; i++) {
		a[i] = new RussWire();
		b[i] = new RussWire();
		sum[i] = new RussWire();
	    }
	}
}

