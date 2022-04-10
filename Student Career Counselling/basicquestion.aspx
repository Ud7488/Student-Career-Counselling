<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="basicquestion.aspx.cs" Inherits="Student_Career_Counselling.basicquestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<%--	<section>
		<div class="row">
			<div class="col-8">

				<div class="row">
					<div class="col-12">
						<center>
							<h1>Basic Questions</h1>
						</center>
					</div>
				</div>
				<div id="question1">
  					<p>1.You like math too much:</p>
					<div id="answer">
						<input type="radio" id="1" name="1" value="1">
						<label for="1">True</label><br>
					</div>
					<div id="answer1">
						<input type="radio" id="2" name="1" value="2">
						<label for="2">False</label><br>
					</div>
				</div>
				<div id="question2">
  					<p>2.You like to study about nature:</p>
					<div id="answer2">
						<input type="radio" id="3" name="2" value="3">
						<label for="3">True</label><br>
					</div>
					<div id="answer3">
						<input type="radio" id="4" name="2" value="4">
						<label for="4">False</label><br>
					</div>
				</div>
				<div id="question3">
  					<p>3.You are good at technical subject:</p>
					<div id="answer4">
						<input type="radio" id="5" name="3" value="5">
						<label for="5">True</label><br>
					</div>
					<div id="answer5">
						<input type="radio" id="6" name="3" value="6">
						<label for="6">False</label><br>
					</div>
				</div>
				<div id="question4">
  					<p>4.You score most in theory subject:</p>
					<div id="answer6">
						<input type="radio" id="7" name="4" value="7">
						<label for="7">True</label><br>
					</div>
					<div id="answer7">
						<input type="radio" id="8" name="4" value="8">
						<label for="8">False</label><br>
					</div>
				</div>
				<div id="question5">
  					<p>5.You often think about the problem in your family and think you can solve them better:</p>
					<div id="answer8">
						<input type="radio" id="9" name="5" value="9">
						<label for="9">True</label><br>
					</div>
					<div id="answer9">
						<input type="radio" id="10" name="5" value="10">
						<label for="10">False</label><br>
					</div>
				</div>
				<div id="question6">
  					<p>6.You like psychology:</p>
					<div id="answer10">
						<input type="radio" id="11" name="6" value="11">
						<label for="11">True</label><br>
					</div>
					<div id="answer11">
						<input type="radio" id="12" name="6" value="12">
						<label for="12">False</label><br>
					</div>
				</div>
				<div id="question7">
  					<p>7.You fascinated are by inventions:</p>
					<div id="answer12">
						<input type="radio" id="13" name="7" value="13">
						<label for="13">True</label><br>
					</div>
					<div id="answer13">
						<input type="radio" id="14" name="7" value="14">
						<label for="14">False</label><br>
					</div>
				</div>
				<div id="question8">
  					<p>8.You like to invent things:</p>
					<div id="answer14">
						<input type="radio" id="15" name="8" value="15">
						<label for="15">True</label><br>
					</div>
					<div id="answer15">
						<input type="radio" id="16" name="8" value="16">
						<label for="16">False</label><br>
					</div>
				</div>
				<div id="question9">
  					<p>9.You are good good at making deals:</p>
					<div id="answer16">
						<input type="radio" id="17" name="9" value="17">
						<label for="17">True</label><br>
					</div>
					<div id="answer17">
						<input type="radio" id="18" name="9" value="18">
						<label for="18">False</label><br>
					</div>
				</div>
				<div id="question10">
  					<p>10.You like budget planning:</p>
					<div id="answer18">
						<input type="radio" id="19" name="10" value="19">
						<label for="19">True</label><br>
					</div>
					<div id="answer19">
						<input type="radio" id="20" name="10" value="20">
						<label for="20">False</label><br>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Submit" />
						</div>
					</div>
				 </div>

			</div>
		</div>
	</section>--%>

	<section>
		<div>
				<asp:Label ID="Label3" runat="server" Text="Member ID : "></asp:Label>
				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		</div>
		<div>
			<table style="width:100%;">  
				<tr>  
					<td class="style4">  
						</td>  
					<td class="style3" style="font-size: large; color: #000000; font-weight: bold" >  
						Please Answer these Questions</td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						 </td>  
					<td class="style2">  
						 </td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						<asp:Label ID="Label7" runat="server"   
							Text="1)  Which number should come next in the series 24,23,21,18,14?"></asp:Label>  
					</td>  
					<td class="style2">  
						<asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField="ans"   
							DataValueField="ans">  
							<asp:ListItem>5</asp:ListItem>  
							<asp:ListItem>6</asp:ListItem> 
							<asp:ListItem>8</asp:ListItem>  
							<asp:ListItem>9</asp:ListItem>
						</asp:RadioButtonList>  
					</td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						<asp:Label ID="Label5" runat="server" Text="2)  What is the area of a triangle with sides 6cm, 8cm & 10cm?"></asp:Label>  
					</td>  
					<td class="style2">  
						<asp:RadioButtonList ID="RadioButtonList2" runat="server" DataTextField="ans1"   
							DataValueField="ans1">  
							<asp:ListItem>20 cm2</asp:ListItem>  
							<asp:ListItem>30 cm2</asp:ListItem>
							<asp:ListItem>24 cm2</asp:ListItem>  
							<asp:ListItem>12 cm2</asp:ListItem>
						</asp:RadioButtonList>  
					</td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						<asp:Label ID="Label6" runat="server"   
							Text="3)  What is the minimum value of n(AUB) if n(A) = 12 & n(B) = 8?"></asp:Label>  
					</td>  
					<td class="style2">  
						<asp:RadioButtonList ID="RadioButtonList3" runat="server" DataTextField="ans2"   
							DataValueField="ans2">  
							<asp:ListItem>20</asp:ListItem>  
							<asp:ListItem>12</asp:ListItem>
							<asp:ListItem>8</asp:ListItem>  
							<asp:ListItem>4</asp:ListItem>  
						</asp:RadioButtonList>  
					</td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						<asp:Label ID="Label1" runat="server"   
							Text="4) Which of the following is not ore of iron? "></asp:Label>  
					</td>  
					<td class="style2">  
						<asp:RadioButtonList ID="RadioButtonList4" runat="server" DataTextField="ans3"   
							DataValueField="ans2">  
							<asp:ListItem>Hematite</asp:ListItem>  
							<asp:ListItem>Magnetite</asp:ListItem>
							<asp:ListItem>Limonite</asp:ListItem>  
							<asp:ListItem>Bauxite</asp:ListItem>  
						</asp:RadioButtonList>  
					</td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						<asp:Label ID="Label2" runat="server"   
							Text="5) The lightest element is "></asp:Label>  
					</td>  
					<td class="style2">  
						<asp:RadioButtonList ID="RadioButtonList5" runat="server" DataTextField="ans4"   
							DataValueField="ans2">  
							<asp:ListItem>Lithium</asp:ListItem>  
							<asp:ListItem>Helium</asp:ListItem>
							<asp:ListItem>Hydrogen</asp:ListItem>  
							<asp:ListItem>Nitrogen </asp:ListItem>  
						</asp:RadioButtonList>  
					</td>  
					<td>  
						 </td>  
				</tr>  

				<tr>  
					<td class="style1">  
						 </td>  
					<td class="style2">  
						 </td>  
					<td>  
						 </td>  
				</tr>  
				<tr>  
					<td class="style1">  
						 </td>  
					<td class="style2">  
			<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit your answer" />  
					</td>  
					<td>  
						<asp:Label ID="lbmsg" runat="server"></asp:Label>  
					</td>  
				</tr>  
				<tr>  
					<td class="style1">  
						 </td>  
					<td class="style2">  
						 </td>  
					<td>  
						 </td>  
				</tr>  
			</table>  
		</div>
	</section>

</asp:Content>
