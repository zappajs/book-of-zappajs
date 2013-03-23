Table of Contents
=================

* Introduction

  Project history, Contributors, License, References (websites, mailing list, etc.)

* Getting Started

  Installation, Running, References (Express, Connect, Coffee-Script, Coffeecup, etc.)

* Startup options

  SSL, ...

* First Steps

  `@get`, `@post`, ...; `@send`, `@json`, `@redirect`, etc.
  `@format`

* Request handling

  `@req`, `@query`, `@body`, etc.

* Middleware

  Connect middleware, ZappaJS middleware. `@use` vs inline middleware.

* Params

  `@param`

* Using Contexts

  ZappaJS Server-Side Contexts explained. Role of `=>` in CoffeeScript. Helpers.

* The Client Side

  `@coffee`, `@shared`
  `@client`: using Sammy.js.
  Client-side helpers.

* Writing modular code

  `@include`. ZappaJS modules.

* Using Views for Content

  Express' legacy. Express3 views, `@locals` (global, response locals). Express2-compatible (`@use 'partials'`, `zappa.adapter`) views. Inline views.
  Postrendering.

* Serving CSS

  `@css`, and using templates (`@stylus`, ..)

* Socket.IO

* Managing Assets

  connect-assets, asset-wrap

* JSONP

* Distributed ZappaJS

  Clustering. Splitting Express and Socket.IO.

* Testing your applications

  Starting Zappa without a server. Writing application tests.

* Options

  What parameters are available with `@set` and `@enable` ?
  Connect options, Express options, ZappaJS options.

* Development vs Deployment

  `@configure`
