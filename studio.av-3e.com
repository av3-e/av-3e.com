<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>My Page</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f5f5;
        color: #222;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 40px 20px;
        text-align: center;
    }

    h1 {
        margin-bottom: 10px;
        font-size: 2.5rem;
    }

    h2 {
        margin-top: 0;
        font-weight: normal;
        color: #666;
    }
    .image-stack img {
        width: 100%;
        max-width: 600px;
        margin: 20px auto;
        display: block;
        border-radius: 10px;
    }
    .separator {
        margin: 40px 0;
        border: none;
        border-top: 2px solid #ddd;
    }
    .links {
        margin-top: 40px;
        display: flex;
        justify-content: center;
        gap: 20px;
    }
    .links a {
        text-decoration: none;
        padding: 12px 20px;
        border-radius: 6px;
        background: #333;
        color: white;
        transition: 0.2s;
    }
    .links a:hover {
        background: #555;
    }
    .discord {
        background: #5865F2;
    }
    .github {
        background: #24292e;
    }
    .discord:hover {
        background: #4752c4;
    }
    .github:hover {
        background: #3a3f44;
    }
</style>
</head>
<body>
<div class="container">
  <h1>"Ave's Studios"</h1>
  <h2>"This is the official website of Ave's studio! welcome."/h2>
    <hr class="separator">
    <!-- Images -->
    <div class="image-stack">
        <img src="https://via.placeholder.com/600x300" alt="Image 1">
        <img src="https://via.placeholder.com/600x300" alt="Image 2">
    </div>
    <hr class="separator">
    <p>
        Some centered text goes here. You can add paragraphs, descriptions,
        or anything you want. The content stays nicely in the middle and does not touch the edges.
    </p>
    <hr class="separator">
    <!-- Footer Links -->
    <div class="links">
        <a class="discord" href="https://discord.com" target="_blank">Discord</a>
        <a class="github" href="https://github.com" target="_blank">GitHub</a>
    </div>
</div>

</body>
</html>
