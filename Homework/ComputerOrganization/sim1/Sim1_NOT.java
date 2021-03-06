/* Simulates a physical NOT gate.
 *
 * Author: Parker Gabel
 */

public class Sim1_NOT
{
	public void execute()
	{
	    if(this.in.get()) {
		this.out.set(false);
	    } else {
	        this.out.set(true);
	    }
	}



	public RussWire in;    // input
	public RussWire out;   // output

	public Sim1_NOT()
	{
	    this.in = new RussWire();
	    this.out = new RussWire();
	}
}

