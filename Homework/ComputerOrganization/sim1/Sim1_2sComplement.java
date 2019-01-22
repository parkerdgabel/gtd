/* Simulates a physical device that performs 2's complement on a 32-bit input.
 *
 * Author: Parker Gabel
 */

public class Sim1_2sComplement
{
	public void execute()
	{
	    for(int i=0; i<32; i++) {
		inverters[i].in = in[i];
		inverters[i].execute();
		temp[i].set(inverters[i].out.get());
	    }
	    adder.a = temp;
	    adder.b = one;
	    adder.execute();
	    out = adder.sum;
	}



	// you shouldn't change these standard variables...
	public RussWire[] in;
	public RussWire[] out;

        private RussWire[] temp;
        private RussWire[] one;
        private Sim1_NOT[] inverters;
        private Sim1_ADD adder;


	public Sim1_2sComplement()
	{
	    adder = new Sim1_ADD();
	    in = new RussWire[32];
	    out = new RussWire[32];
	    inverters = new Sim1_NOT[32];
	    for (int i=1; i<32; i++)
		{
			in[i] = new RussWire();
			out[i] = new RussWire();
			inverters[i] = new Sim1_NOT(); 
			one[i] = new RussWire().set(false);
			temp[i] = new RussWire();
		}
	    in[0] = new RussWire();
	    out[0] = new RussWire();
	    inverters[0] = new Sim1_NOT(); 
	    one[0] = new RussWire().set(true);
	    temp[0] = new RussWire();
	}
}

