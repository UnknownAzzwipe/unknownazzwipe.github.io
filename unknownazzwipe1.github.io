<!DOCTYPE html>
<html>
<head>
  <title>Material You PDF Viewer</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Roboto, sans-serif;
      margin: 0;
      padding: 0;
    }

    .pdf-viewer {
      width: 100%;
      height: 100%;
      overflow: hidden;
    }

    .pdf-viewer canvas {
      width: 100%;
      height: 100%;
    }

    .pdf-viewer .controls {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      padding: 1rem;
      background-color: var(--mdc-theme-surface);
      border-top: 1px solid var(--mdc-theme-on-surface-100);
    }

    .pdf-viewer .controls button {
      margin: 0 1rem;
      padding: 0.5rem 1rem;
      border: none;
      background-color: transparent;
      color: var(--mdc-theme-on-surface-100);
      font-size: 1rem;
      font-weight: 500;
      cursor: pointer;
    }

    .pdf-viewer .controls button:hover {
      background-color: var(--mdc-theme-primary);
      color: white;
    }
  </style>
</head>
<body>
  <div class="pdf-viewer">
    <canvas></canvas>
    <div class="controls">
      <button>Previous</button>
      <button>Next</button>
      <button>Zoom In</button>
      <button>Zoom Out</button>
    </div>
  </div>

  <script>
    const pdfViewer = document.querySelector('.pdf-viewer');
    const pdfCanvas = pdfViewer.querySelector('canvas');
    const controls = pdfViewer.querySelector('.controls');

    const pdfFile = 'path/to/pdf.pdf';

    const pdf = new PDFJS.PDFDocument();
    pdf.open(pdfFile);

    pdf.getPage(1).then(page => {
      const ctx = pdfCanvas.getContext('2d');
      page.render(ctx);
    });

    controls.querySelectorAll('button').forEach(button => {
      button.addEventListener('click', () => {
        // Do something
      });
    });
  </script>
</body>
</html>
