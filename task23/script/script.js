function changeColor(elementID) {
    const box = document.getElementById(elementID);
    box.addEventListener('click', function() {
        const allBoxes = document.querySelectorAll('.box');
                allBoxes.forEach(function(item) {
            if (item === box) {
                item.style.backgroundColor = '#FFF7C0';
            } else {
                item.style.backgroundColor = ''; 
            }
        });
    });
}


