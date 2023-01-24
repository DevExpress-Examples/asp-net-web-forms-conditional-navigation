<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASPxTreeView.aspx.cs" Inherits="ASPxTreeView" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<script type="text/javascript">
    function OnNodeClick(s, e) {
        if (confirm("Do you really want to open '" + e.node.GetText() + "' ?"))
            window.open(e.node.name)
    }
</script>
    <form id="form1" runat="server">
    <a href="Default.aspx"><< go Back</a><br />
    <dx:ASPxTreeView ID="trvExample" runat="server" ClientInstanceName="treeView">
        <ClientSideEvents NodeClick="OnNodeClick" />
        <Nodes>
            <dx:TreeViewNode Name="http://www.devexpress.com/" Text="DevExpress Home">
            </dx:TreeViewNode>
            <dx:TreeViewNode Name="http://search.devexpress.com/" Text="DevExpress Search">
            </dx:TreeViewNode>
            <dx:TreeViewNode Name="http://www.devexpress.com/Support/" Text="DevExpress Support">
            </dx:TreeViewNode>
        </Nodes>
    </dx:ASPxTreeView>
    </form>
</body>
</html>
