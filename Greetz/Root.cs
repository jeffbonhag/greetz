using System;
using Nancy;

namespace Greetz
{
	public class Root : NancyModule
	{
		public Root ()
		{
			Get ["/"] = _ => "";
		}
	}
}

