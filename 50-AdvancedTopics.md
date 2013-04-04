Advanced Topics
===============

Implementing a reverse proxy
----------------------------

You can use Zappa (actually, Express) and mikeal's `request` module to easily implement a reverse-proxy. In this example we send any request that comes in to another web server running on the same host.

    request = require 'request'

    make_proxy = (proxy_base) ->
      return ->
        proxy = request
          uri: proxy_base + @request.url
          method: @request.method
          headers: @request.headers
          jar: false
          followRedirect: false
          timeout: 1000
        @request.pipe proxy
        proxy.pipe @response
        return

    require('zappajs').run ->

      my_proxy = make_proxy 'http://127.0.0.1:5984'
      my_urls = /^\/(_session|_users|_uuids|_utils|provisioning|billing|cdr|u.*)($|\/)/
      @get  my_urls, my_proxy
      @post my_urls, my_proxy
      @put  my_urls, my_proxy
      @del  my_urls, my_proxy
