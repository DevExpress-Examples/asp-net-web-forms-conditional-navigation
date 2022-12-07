<%@ Page Language="vb" AutoEventWireup="true" CodeFile="ASPxNavBar.aspx.vb" Inherits="ASPxNavBar" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<script type="text/javascript">
		function OnItemClick(s, e) {
			if (confirm("Do you really want to open '" + e.item.GetText() + "' ?"))
				window.open(e.item.name)
		}
	</script>

	<form id="frmMain" runat="server">
	<a href="Default.aspx"><< go Back</a><br />
	<dx:ASPxNavBar ID="nvbExample" runat="server" ClientInstanceName="navBar">
		<ClientSideEvents ItemClick="OnItemClick" />
		<Groups>
			<dx:NavBarGroup>
				<Items>
					<dx:NavBarItem Name="http://www.devexpress.com/" Text="DevExpress Home">
					</dx:NavBarItem>
					<dx:NavBarItem Name="http://search.devexpress.com/" Text="DevExpress Search">
					</dx:NavBarItem>
					<dx:NavBarItem Name="http://www.devexpress.com/Support/" Text="DevExpress Support">
					</dx:NavBarItem>
				</Items>
			</dx:NavBarGroup>
		</Groups>
	</dx:ASPxNavBar>
	</form>
</body>
</html>