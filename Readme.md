<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564569/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3925)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [ASPxMenu.aspx](./CS/WebSite/ASPxMenu.aspx) (VB: [ASPxMenu.aspx](./VB/WebSite/ASPxMenu.aspx))
* [ASPxNavBar.aspx](./CS/WebSite/ASPxNavBar.aspx) (VB: [ASPxNavBar.aspx](./VB/WebSite/ASPxNavBar.aspx))
* [ASPxTreeView.aspx](./CS/WebSite/ASPxTreeView.aspx) (VB: [ASPxTreeView.aspx](./VB/WebSite/ASPxTreeView.aspx))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to implement conditional navigation for the ASPxMenu, ASPxNavBar, and ASPxTreeView controls
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3925/)**
<!-- run online end -->


<p>This example demonstrates how to implement conditional navigation with ASPxMenu, ASPxTreeView and ASPxNavBar.</p><p>1) Do not specify the <strong>NavigateURL</strong> property for each <strong>ASPxMenu / ASPxNavBar</strong> item (or a node for <strong>ASPxTreeView</strong>) to prevent default items behavior;<br />
2) Set navigate URL for each item/node via the <strong>Name</strong> property. It will allow you to get URL for navigation from <strong>item/node</strong> context;<br />
3) Handle the <strong>ASPxMenu / ASPxNavBar ItemClick</strong> (<strong>ASPxTreeView NodeClick</strong>) event and perform conditional navigation as shown below:</p><p><strong>ASPxMenu:</strong></p>

```aspx
<dx:ASPxMenu ID="menuExample" runat="server" ClientInstanceName="menu">
   <ClientSideEvents ItemClick="OnItemClick" />
   <Items>
       <dx:MenuItem Name="http://www.devexpress.com/" Text="DevExpress Home">
       </dx:MenuItem>
		...
   </Items>
</dx:ASPxMenu>

```

<p> </p><p><strong>ASPxNavBar:</strong></p>

```aspx
<dx:ASPxNavBar ID="nvbExample" runat="server" ClientInstanceName="navBar">
  <ClientSideEvents ItemClick="OnItemClick" />
  <Groups>
      <dx:NavBarGroup>
	  <Items>
	     <dx:NavBarItem Name="http://www.devexpress.com/" Text="DevExpress Home">
	     </dx:NavBarItem>
		...
	  </Items>
      </dx:NavBarGroup>
  </Groups>
</dx:ASPxNavBar>

```

<p>JavaScript:</p>

```js
function OnItemClick(s, e) {
   if (confirm("Do you really want to open '" + e.item.GetText() + "' ?"))
       window.open(e.item.name)
}

```

<p> </p><p><strong>ASPxTreeView:</strong></p><p><br />


```aspx
<dx:ASPxTreeView ID="trvExample" runat="server" ClientInstanceName="treeView">
   <ClientSideEvents NodeClick="OnNodeClick" />
   <Nodes>
       <dx:TreeViewNode Name="http://www.devexpress.com/" Text="DevExpress Home">
       </dx:TreeViewNode>
          ...
   </Nodes>
</dx:ASPxTreeView>

```

  JavaScript:</p>

```js
function OnNodeClick(s, e) {
   if (confirm("Do you really want to open '" + e.node.GetText() + "' ?"))
       window.open(e.node.name)
} 
```

<p> </p>

<br/>


