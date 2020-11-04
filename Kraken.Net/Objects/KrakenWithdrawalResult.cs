using Newtonsoft.Json;

namespace Kraken.Net.Objects
{
	/// <summary>
	/// Result of a withdrawal request
	/// </summary>
	public class KrakenWithdrawalResult
	{
		/// <summary>
		/// Reference id
		/// </summary>
		[JsonProperty("refid")]
		public string ReferenceId { get; set; } = "";
	}
}
