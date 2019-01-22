/* Simulates a physical AND gate.
 *
 * Author: Parker Gabel
 */

public class Sim1_AND
{
	public void execute()
	{
	    if(this.a.get() && this.b.get()) {
		this.out.set(true);
	    } else {
		this.out.set(false);
	    }
	}



	public RussWire a,b;   // inputs
	public RussWire out;   // output

	public Sim1_AND()
	{
	    this.a = new RussWire();
	    this.b = new RussWire();
	    this.out = new RussWire();
	}
}

