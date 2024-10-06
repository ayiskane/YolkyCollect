document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".memorial-card").forEach((card) => {
    card.addEventListener("click", function () {
      // Expand the card
      this.classList.toggle("expanded");
      document.querySelector(".overlay").classList.toggle("active");
    });
  });

  document.querySelector(".overlay").addEventListener("click", function () {
    // Close the expanded card
    document.querySelectorAll(".expanded").forEach((expandedCard) => {
      expandedCard.classList.remove("expanded");
    });
    this.classList.remove("active");
  });
});
