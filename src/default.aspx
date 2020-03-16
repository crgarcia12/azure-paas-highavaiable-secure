<%@ Page Language="C#" Debug="true" AutoEventWireup="true" EnableSessionState="False" EnableViewState="False" EnableViewStateMac="False" %>
<%@ Import Namespace="System.Net" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>Header Dump</title>
<script src="http://www.atmrum.net/rum.js"></script>
<script>rum.start("b2217758b736707f86e60a7575704ae4");</script>
</head>
<body>
<form id="formHeaderDump" runat="server">
<div id="divHeaderDump">
<asp:Literal ID="litrlHeaderDump" runat="server" />
<asp:Literal ID="litrlBackendIp" runat="server" />
</div>
</form>
</body>
</html>
<script runat="server">
void Page_Load(object sender, EventArgs e)
{
	Response.Cache.SetCacheability(HttpCacheability.NoCache);
 
	foreach (string strKey in Request.Headers.AllKeys)
	{
		litrlHeaderDump.Text += strKey + " = " + Request.Headers[strKey] + "<br />\n";
	}	
	
    string address = "https://api.ipify.org?format=json";
	WebClient client = new WebClient ();
	litrlBackendIp.Text = client.DownloadString (address);
}
</script>