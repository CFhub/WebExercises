<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="(Ex06) MultiRecordDropdownToCustomGridView.aspx.cs" Inherits="WebExercises.ExercisePages._Ex06__MultiRecordDropdownToCustomGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1> Multi Record Query Dropdown to Custom GridView (Ex06)</h1>
    <div class="offset-2">
        <asp:Label ID="Label1" runat="server" Text="Select a Team "></asp:Label>&nbsp;&nbsp;   
        <asp:DropDownList ID="List01" runat="server"></asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Fetch" runat="server" Text="Fetch" 
             CausesValidation="false" OnClick="Fetch_Click"/>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="CoachLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="CoachLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="AssistantCoachLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="AssistantCoachLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="WinsLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="WinsLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="LossesLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="LossesLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="Label2" runat="server" ></asp:Label>
        </div>
    </div>    
    <br /><br />
    <div>
        <asp:GridView ID="List02" runat="server" 
            AutoGenerateColumns="False"
            CssClass="table table-striped" GridLines="Horizontal"
            BorderStyle="None" AllowPaging="True"
            OnPageIndexChanging="List02_PageIndexChanging" PageSize="5">
            <headerstyle backcolor="LightCyan"
            ForeColor="MediumBlue"/>
            <Columns>
                <asp:TemplateField HeaderText="Name" Visible="True">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="LastName" runat="server" 
                            Text='<%# (Eval("LastName") + ", " + Eval("FirstName"))%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="Age" runat="server" 
                            Text='<%# Eval("Age") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                        <asp:Label ID="Gender" runat="server" 
                            Text='<%# Eval("Gender") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Med Alert">
                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                        <asp:Label ID="MedicalAlertDetails" runat="server" 
                            Text='<%# Eval("MedicalAlertDetails") == null ? "" : Eval("MedicalAlertDetails") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No data available at this time
            </EmptyDataTemplate>
            <PagerSettings FirstPageText="Start" LastPageText="End" Mode="NumericFirstLast" PageButtonCount="3" />
        </asp:GridView>
    </div>
</asp:Content>
