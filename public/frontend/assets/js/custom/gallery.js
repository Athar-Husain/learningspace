document.addEventListener('DOMContentLoaded', () => {
    // Select ALL relevant gallery images
    const allGalleryImages = document.querySelectorAll(
        '.gallery__image-img, .gallery__image-large-img, .gallery__grid-img, .gallery__header-img'
    );
    const modal = document.getElementById('modal');
    const modalImg = document.getElementById('modalImg');
    const closeModal = document.getElementById('closeModal');
    const nextBtn = document.getElementById('nextBtn');
    const prevBtn = document.getElementById('prevBtn');

    let currentIndex = 0;
    // Create a list of all image sources from the selected elements
    const srcList = Array.from(allGalleryImages).map(img => img.src);

    // Open Modal Function
    function openModal(index) {
        currentIndex = index;
        modalImg.src = srcList[currentIndex];
        modal.classList.add('flex'); // Add the 'flex' class to show the modal
        document.body.style.overflow = 'hidden'; // Prevent main page scrolling
    }

    // Close Modal Function
    function closeModalFunc() {
        modal.classList.remove('flex'); // Remove the 'flex' class to hide the modal
        document.body.style.overflow = ''; // Restore main page scrolling
    }

    // Show Next Image in Modal
    function showNext() {
        currentIndex = (currentIndex + 1) % srcList.length;
        modalImg.src = srcList[currentIndex];
    }

    // Show Previous Image in Modal
    function showPrev() {
        currentIndex = (currentIndex - 1 + srcList.length) % srcList.length;
        modalImg.src = srcList[currentIndex];
    }

    // Add Click Event Listeners for ALL Gallery Images
    allGalleryImages.forEach((img, index) => {
        img.addEventListener('click', () => openModal(index));
    });

    // Add Close Modal Event Listener
    closeModal.addEventListener('click', closeModalFunc);

    // Add Next and Prev Buttons Click Event Listeners
    nextBtn.addEventListener('click', showNext);
    prevBtn.addEventListener('click', showPrev);

    // Close Modal if Clicked Outside the Image (on the overlay itself)
    modal.addEventListener('click', (e) => {
        if (e.target === modal) { // Check if the click was directly on the modal overlay
            closeModalFunc();
        }
    });

    // Keyboard Navigation for Modal
    document.addEventListener('keydown', (e) => {
        if (modal.classList.contains('flex')) { // Only act if the modal is currently open
            if (e.key === 'Escape') closeModalFunc();
            if (e.key === 'ArrowRight') showNext();
            if (e.key === 'ArrowLeft') showPrev();
        }
    });
});