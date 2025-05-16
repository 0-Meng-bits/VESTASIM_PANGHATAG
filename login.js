const loginBtn = document.querySelector(".log-btn a"); // Target the <a> tag inside the <li>
const formPopup = document.querySelector(".form-popup");
const closePopupBtn = document.querySelector(".form-popup .close-btn");

loginBtn.addEventListener("click", (event) => {
    const isLoggedIn = loginBtn.textContent.trim() === "Logout"; // Check if the button is "Logout"

    if (isLoggedIn) {
        window.location.href = "Logout.aspx"; // Redirect to logout page
    } else {
        document.body.classList.toggle("show-popup"); // Show the login form (if not logged in)
    }
});

closePopupBtn.addEventListener("click", () => {
    document.body.classList.remove("show-popup"); // Close the popup when clicked
});

window.addEventListener("DOMContentLoaded", () => {
    const loginBtn = document.querySelector(".log-btn a");
    const isLoggedIn = document.body.getAttribute('data-loggedin') === "true"; // Access the attribute

    if (isLoggedIn) {
        loginBtn.textContent = "Logout";
        loginBtn.setAttribute("href", "Logout.aspx");
    } else {
        loginBtn.textContent = "Login";
        loginBtn.setAttribute("href", "Loginn.aspx");
    }
});


function filterLocations() {
    const searchInput = document.getElementById("txtSearch").value.trim();
    const propertyResults = document.getElementById("propertyResults");
    const noResultsMessage = propertyResults.querySelector(".no-results-message");

    // Simulate fetching results (replace with your actual logic)
    let results = []; // This should be populated by your actual search logic
    // Example: results = someSearchFunction(searchInput);

    // Clear previous results (except the no-results message)
    propertyResults.innerHTML = '<div class="no-results-message" style="display: none;">No results</div>';

    if (searchInput === "") {
        // If search input is empty, hide results
        propertyResults.classList.remove("visible");
        propertyResults.classList.remove("no-results");
    } else if (results.length === 0) {
        // No results: show "No results" message and shrink
        propertyResults.classList.add("visible");
        propertyResults.classList.add("no-results");
        noResultsMessage.style.display = "block";
    } else {
        // Results exist: populate and expand
        propertyResults.classList.add("visible");
        propertyResults.classList.remove("no-results");
        noResultsMessage.style.display = "none";

        // Populate results (example)
        results.forEach(result => {
            const resultItem = document.createElement("div");
            resultItem.className = "property-item";
            resultItem.textContent = result; // Replace with actual property data
            propertyResults.appendChild(resultItem);
        });
    }
}



