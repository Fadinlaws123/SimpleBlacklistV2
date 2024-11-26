document.addEventListener("DOMContentLoaded", () => {
    const notification = document.getElementById("notification");

    window.addEventListener("message", (event) => {
        const data = event.data;
        if (data.type === "notification") {
            notification.innerHTML = `
                <span style="color: #F00; font-size: 20px;">🚫</span>
                <span>${data.message}</span>
            `;

            notification.style.setProperty("--background-color", "#222");
            notification.style.setProperty("--text-color", "#FFF");
            notification.style.setProperty("--border-color", "#F00");
            notification.style.setProperty("--box-shadow-color", "rgba(0, 0, 0, 0.5)");
            notification.style.setProperty("--notification-duration", "5s");

            notification.style.display = "block";

            setTimeout(() => {
                notification.style.display = "none";
            }, 5000); // Duration matches CSS animation
        }
    });
});
