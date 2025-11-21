document.addEventListener("DOMContentLoaded", () => {
    const btn = document.getElementById("actionBtn");
    const message = document.getElementById("message");

    btn.addEventListener("click", () => {
        message.textContent = "Button clicked! JavaScript is working 🎉";
    });
});
