const words = ["We Love", "We Care", "We Protect"]; // The words you want to display
const wordContainer = document.getElementById("word-container");
let currentIndex = 0;

function changeWord() {
    wordContainer.textContent = words[currentIndex];
    currentIndex = (currentIndex + 1) % words.length;
}

// Initial display of the word
changeWord();

// Change the word every 2 seconds (2000 milliseconds)
setInterval(changeWord, 2000);

document.querySelectorAll('.user-card').forEach(card => {
    card.addEventListener('touchstart', function() {
      this.classList.add('touched');
    });
    card.addEventListener('touched', function() {
      this.classList.remove('touched');
    });
});