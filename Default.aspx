<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp2_constient._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div style="padding">

      <table class="w-100">
          <tr>
              <td style="background-color: #993399; font-weight: bolder; font-size: large; font-style: italic; text-decoration: blink">&nbsp;</td>
              <td style="background-color: #993399; font-weight: bolder; font-size: large; font-style: italic; text-decoration: blink">State - City Crud&nbsp; with Drop down Grid</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td style="height: 41px">State </td>
              <td style="height: 41px">
                  <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter State" Width="500px"  ></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td style="height: 41px"></td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>City</td>
              <td>
                  <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter City" width="500px"></asp:TextBox>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>Pincode</td>
              <td>
                  <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Pincode" width="500px"   ></asp:TextBox>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
          </tr>
          <tr>
              <td>&nbsp; </td>
              <td>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
              &nbsp;&nbsp;
                  &nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Fetch All" />
              &nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Update" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox6" runat="server" placeholder=" SEARCH HERE "  ></asp:TextBox>
                  &nbsp;
                  <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Search" />
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
          </tr>
          <tr>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
          </tr>
          <tr>
              <td>&nbsp; &nbsp;</td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                      <asp:ListItem>Select State</asp:ListItem>
                      <asp:ListItem>Andhrapradesh</asp:ListItem>
                      <asp:ListItem>Arunachalpradesh</asp:ListItem>
                      <asp:ListItem>Assam</asp:ListItem>
                      <asp:ListItem>Bihar</asp:ListItem>
                      <asp:ListItem>Chhattisgarh</asp:ListItem>
                      <asp:ListItem>Goa</asp:ListItem>
                      <asp:ListItem>Gujarat</asp:ListItem>
                      <asp:ListItem>Haryana</asp:ListItem>
                      <asp:ListItem>HimachalPradesh</asp:ListItem>
                      <asp:ListItem>Jharkhand</asp:ListItem>
                      <asp:ListItem>Karnataka</asp:ListItem>
                      <asp:ListItem>Kerala</asp:ListItem>
                      <asp:ListItem>Madhyapradesh</asp:ListItem>
                      <asp:ListItem>Maharashtra</asp:ListItem>
                      <asp:ListItem>Manipur</asp:ListItem>
                      <asp:ListItem>Meghalaya</asp:ListItem>
                      <asp:ListItem>Mizoram</asp:ListItem>
                      <asp:ListItem>Nagaland</asp:ListItem>
                      <asp:ListItem>Odisha</asp:ListItem>
                      <asp:ListItem>Punjab</asp:ListItem>
                      <asp:ListItem>Rajasthan</asp:ListItem>
                      <asp:ListItem>Sikkim</asp:ListItem>
                      <asp:ListItem>Tamilnadu</asp:ListItem>
                      <asp:ListItem>Telangana</asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Tripura</asp:ListItem>
                      <asp:ListItem>Uttarkhand</asp:ListItem>
                      <asp:ListItem>WestBengal</asp:ListItem>
                  </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;
                  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter ID" ></asp:TextBox>
&nbsp;
                  <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Delete" BackColor="#FF3300" Width="196px" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1213px" Height="16px">
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                  </asp:GridView>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>

  </div>

</asp:Content>
