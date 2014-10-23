using NUnit.Framework;
using System;
using Nancy;
using Nancy.Testing;

namespace Greetz.Tests
{
	[TestFixture ()]
	public class TestRoot
	{
		[Test ()]
		public void TestOK ()
		{
			var bootstrapper = new DefaultNancyBootstrapper();
			var browser = new Browser(bootstrapper);

			var result = browser.Get("/", with => {
				with.HttpRequest();
			});

			Assert.AreEqual(HttpStatusCode.OK, result.StatusCode);
		}
	}
}

