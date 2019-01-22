/* Simulates a physical OR gate.
 *
 * Author: TODO
 */

public class Sim1_OR
{
	public void execute()
	{	
	    if(this.a.get() || this.b.get()) {
		this.out.set(true);
	    } else {
		this.out.set(false);
	    }

	}



	public RussWire a,b;   // inputs
	public RussWire out;   // output

	public Sim1_OR()
	{
	    this.a = new RussWire();
	    this.b = new RussWire();
	    this.out = new RussWire();

	}
}

