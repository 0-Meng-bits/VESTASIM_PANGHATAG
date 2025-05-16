<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="WebApplication1.VESTASIM.buy" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VestaSim</title>
    <link rel="stylesheet" href="buy.css" />
    <script src="login.js" defer></script>

    <script>
        function viewBtn1() {
            document.getElementById('apartmentModal1').style.display = 'block';
        }

        function closeModal1() {
            document.getElementById('apartmentModal1').style.display = 'none';
        }


        function viewBtn2() {
            document.getElementById('apartmentModal2').style.display = 'block';
        }

        function closeModal2() {
            document.getElementById('apartmentModal2').style.display = 'none';
        }

        function viewBtn3() {
            document.getElementById('apartmentModal3').style.display = 'block';
        }

        function closeModal3() {
            document.getElementById('apartmentModal3').style.display = 'none';
        }

        function viewBtn4() {
            document.getElementById('apartmentModal4').style.display = 'block';
        }

        function closeModal4() {
            document.getElementById('apartmentModal4').style.display = 'none';
        }

        function viewBtn5() {
            document.getElementById('apartmentModal5').style.display = 'block';
        }

        function closeModal5() {
            document.getElementById('apartmentModal5').style.display = 'none';
        }

        function viewBtn6() {
            document.getElementById('apartmentModal6').style.display = 'block';
        }

        function closeModal6() {
            document.getElementById('apartmentModal6').style.display = 'none';
        }

        function viewBtn7() {
            document.getElementById('apartmentModal7').style.display = 'block';
        }

        function closeModal7() {
            document.getElementById('apartmentModal7').style.display = 'none';
        }

        function viewBtn8() {
            document.getElementById('apartmentModal8').style.display = 'block';
        }

        function closeModal8() {
            document.getElementById('apartmentModal8').style.display = 'none';
        }

        function viewBtn9() {
            document.getElementById('apartmentModal9').style.display = 'block';
        }

        function closeModal9() {
            document.getElementById('apartmentModal9').style.display = 'none';
        }

        window.onclick = function (event) {
            const modal = document.getElementById('apartmentModal');
            if (event.target == modal) {
                closeModal();
            }
        }

    </script>


</head>

<body>
    <!-- Wrap everything inside the form tag -->
    <form id="form1" runat="server">
        <!-- Navigation bar -->
        <nav class="navbar">
            <h1 class="logo">VestaSim</h1>
            <ul class="navlinks">
                <li class="active"><a href="home.aspx">Home</a></li>
                <li>
                    <a href="#properties">Properties</a>
                    <ul class="dropdown">
                        <li><a href="buy.aspx">Buy</a></li>
                        <li><a href="sell.aspx">Sell</a></li>
                        <li><a href="rent.aspx">Rent</a></li>
                    </ul>
                </li>
                <li><a href="home.aspx">About</a></li>
                <li><a href="team.aspx">Team</a></li>
                <li class="ctn"><a href="#contact">Contact</a></li>

                <!-- Login Link -->
                <li id="ctn" class="log-btn">
                    <asp:Panel ID="loginPanel" runat="server">
                        <a href="Loginn.aspx">Login</a>
                    </asp:Panel>
                 
                    <asp:Panel ID="logoutPanel" runat="server">
                        <a href="Logout.aspx">Logout</a>
                    </asp:Panel>
                </li>
            </ul>
            <img class="menubtn" src="IMG/menubtn.png" alt="" />
        </nav>

        <!-- Header section -->
        <section id="home">
            <header>
                <div class="home-content">
                    <h2>Simulate, Invest, and Grow on your path to property success</h2>
                    <div class="line"></div>
                    <h1>Buy now!</h1>


                    <!-- Search Bar Section -->
                      <section id="search-section">
                        <div class="search-wrapper">
                            <div class="search-bar">
                                <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" placeholder="Search properties..." onkeyup="filterLocations()" />
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-btn" OnClick="btnSearch_Click" />
                            </div>
        
                            <!-- Suggestions or live results will overflow here -->
                            <div id="Div1" runat="server" class="suggestions-box"></div>
        
                            <!-- Full search results appear below (optional or on full search) -->
                            <div id="propertyResults" runat="server" class="property-results-box">
                                <div class="no-results-message" style="display: none;">No results</div>
                            </div>

                        </div>
                      </section>



                </div>
            </header>
        </section>

        <!-- Buy content -->
    <section id="buysell">
        <div class="title">
            <h1>Own a property and Sell it!</h1>
            <div class="line"></div>
        </div>
 <div class="row-buysell">
     <!-- Apartment 1 -->
     <div class="col-buysell">
         <img src="IMG/aprtment1.png" alt="Penthouse" />
         <div class="apartment-info">
             <h3>Breathtaking penthouse apartment</h3>
             <div class="details"><span>3 bedroom</span><span>2 bathroom</span></div>
             <div class="details"><span>144 m²</span><span class="price">Starting from Free</span></div>
         </div>
          <div class="actions"><button onClick="viewBtn1()">VIEW</button></div>
     </div>

     <div id="apartmentModal1" class="modal" style="display:block">
        <div class="modal-content wide-modal">  
          <span class="close" onclick="closeModal1()">&times;</span>
          <div class="modal-body">
          <img src="IMG/apartmentview_2.png" alt="Breathtaking penthouse apartment" class="modal-image"> 
          <img src="IMG/apartmentview_3.png" alt="Breathtaking penthouse apartment" class="modal-image"> 
          <img src="night4.jpg" alt="" class="modal-image">  
            <div class="modal-text">
            </div>
          </div>
        </div>
      </div>

     


            </section>

        <!-- Footer section -->
        <section id="footer">
            <footer>
                <div class="footer-container">
                    <div class="footer-section about">
                        <h2>About Us</h2>
                        <p>
                            At VestaSim, we make buying, selling, and renting properties simple, secure,
                            and seamless. Whether you're looking for your dream home, listing a property,
                            or finding the perfect rental.
                        </p>
                    </div>
                    <div class="footer-section links">
                        <h2>Quick Links</h2>
                        <ul>
                            <li><a href="home.aspx">Home</a></li>
                            <li><a href="#about">About Us</a></li>
                            <li><a href="team.aspx">Team</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </div>
                    <div class="footer-section contact">
                        <h2 id="contact">Contact Us</h2>
                        <p>Email: vestasim@gmail.com</p>
                        <p>Phone: 09484463845</p>
                        <p>Address: Agujo Daanbantayan, Cebu, Philippines</p>
                    </div>
                    <div class="footer-bottom">
                        <p>&copy; 2025 VESTASIM. All Rights Reserved.</p>
                    </div>
                </div>
            </footer>
        </section>
    </form>
</body>
        
</html>
