First Steps with ZappaJS
========================

Building a web service with ZappaJS take online a couple lines:

    require('zappajs') ->
      @get '/': 'hi'

Save these two lines into a file called `cuppa.coffee` then start the application with:

    coffee cuppa.coffee

By default ZappaJS will start on port 3000; connect to your new application by pointing a web browser at http://127.0.0.1:3000/

