# Launch CGI program to receive and return data
require 'cgi'
cgi = CGI.new

# After receiving data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Retrieve the data of "goya" which is the mark of information by the description cgi ['goya'] and assign it to a local variable
  get = cgi['goya']

  # Return the response in HTML
  "<html>
    <body>
      <p> THE LIST OF POOR QUALITY PRODUCTS</p>
      String：#{get}
    </body>
  </html>"
}