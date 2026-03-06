document.addEventListener("DOMContentLoaded", function () {

    const photos = document.querySelectorAll(".pet-photo");
    let currentIndex = 0;

    // скрываем все кроме первой
    photos.forEach((photo, index) => {
        if (index !== 0) {
            photo.style.display = "none";
        }
    });

    function showPhoto(index) {
        photos.forEach(photo => photo.style.display = "none");
        photos[index].style.display = "block";
    }

    window.nextPhoto = function () {
        currentIndex++;
        if (currentIndex >= photos.length) {
            currentIndex = 0;
        }
        showPhoto(currentIndex);
    };

    window.prevPhoto = function () {
        currentIndex--;
        if (currentIndex < 0) {
            currentIndex = photos.length - 1;
        }
        showPhoto(currentIndex);
    };

});