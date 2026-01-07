// Function to generate random colors
function getRandomColor() {
    const letters = '0123456789ABCDEF';
    let color = '#';
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

// 1. Wait for everything (including the SVG file) to finish loading
window.addEventListener("load", function() {
    const svgObject = document.getElementById('my-svg-object');
    const saveBtn = document.getElementById('save-btn');

    // Access the internal SVG document
    const svgDoc = svgObject.contentDocument;

    if (!svgDoc) {
        console.error("Could not access SVG document. Ensure Live Server is active.");
        return;
    }

    // 2. Initial coloring of the SVG
    const paths = svgDoc.querySelectorAll('path');
    paths.forEach(path => {
        path.setAttribute('fill', getRandomColor());
    });

    // 3. Handle the Save Button
    saveBtn.addEventListener('click', function() {
        const svgElement = svgDoc.querySelector('svg');
        
        // Ensure the SVG has the correct XML namespace (crucial for standalone saving)
        if (!svgElement.getAttribute("xmlns")) {
            svgElement.setAttribute("xmlns", "http://www.w3.org/2000/svg");
        }

        // Serialize the SVG to a text string
        const serializer = new XMLSerializer();
        const svgString = serializer.serializeToString(svgElement);

        // Create the download blob
        const svgBlob = new Blob([svgString], {type: "image/svg+xml;charset=utf-8"});
        const svgUrl = URL.createObjectURL(svgBlob);

        // Trigger hidden download link
        const downloadLink = document.createElement("a");
        downloadLink.href = svgUrl;
        downloadLink.download = "modified_design.svg";
        document.body.appendChild(downloadLink);
        downloadLink.click();
        
        // Clean up
        document.body.removeChild(downloadLink);
        URL.revokeObjectURL(svgUrl);
    });
});
