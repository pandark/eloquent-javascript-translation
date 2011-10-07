load("FunctionalTools.js");

var horlogeParlante = "<html>\n  <head><title>Le temps</title></head>\n  <body>\n    <h1>Le temps</h1>\n    <p>Il est\n      <script type=\"text/javascript\">\n        var time = new Date();\n        document.write(time.getHours() + \"h\" + time.getMinutes());\n      </script>\n    </p>\n  </body>\n</html>";
