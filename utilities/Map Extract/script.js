// Store used colors so duplicates are impossible
const usedColors = new Set();

// Generate a random hex color
function getRandomColor() {
    const letters = '0123456789ABCDEF';
    let color = '#';
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

// Generate a unique color
function getUniqueRandomColor() {
    let color;
    do {
        color = getRandomColor();
    } while (usedColors.has(color));

    usedColors.add(color);
    return color;
}

// Wait for everything to load
window.addEventListener("load", function () {
    const svgObject = document.getElementById('my-svg-object');
    const saveBtn = document.getElementById('save-btn');

    const svgDoc = svgObject.contentDocument;

    if (!svgDoc) {
        console.error("Could not access SVG document. Ensure Live Server is active.");
        return;
    }

    // Initial colouring
    const paths = svgDoc.querySelectorAll('path');
    paths.forEach(path => {
        path.setAttribute('fill', getUniqueRandomColor());
    });

    // Save button
    saveBtn.addEventListener('click', function () {
        const svgElement = svgDoc.querySelector('svg');

        // Ensure xmlns exists
        if (!svgElement.getAttribute("xmlns")) {
            svgElement.setAttribute("xmlns", "http://www.w3.org/2000/svg");
        }

        // Serialize SVG
        const serializer = new XMLSerializer();
        const svgString = serializer.serializeToString(svgElement);

        // Create downloadable file
        const svgBlob = new Blob([svgString], {
            type: "image/svg+xml;charset=utf-8"
        });
        const svgUrl = URL.createObjectURL(svgBlob);

        const downloadLink = document.createElement("a");
        downloadLink.href = svgUrl;
        downloadLink.download = "modified_design.svg";
        document.body.appendChild(downloadLink);
        downloadLink.click();

        document.body.removeChild(downloadLink);
        URL.revokeObjectURL(svgUrl);
    });
});
