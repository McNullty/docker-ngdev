docker-ngdev
============

Run container with `docker run --rm -i -t -p 9000:9000 -p 35729:35729 -v <host-directory-for-app>:/home/yeoman/app --name ngdev mcnullty/docker-ngdev`

Port 35729 is exposed for live reload and is set in Gruntfile.js

Angular App [Yeoman tutorial][1]
=======

First run angular generator `yo angular`

In Gruntfile.js replace localhost with 0.0.0.0 so you can access your new app from host

Test bulid with `grunt`

Server app `grunt serve`

Your new [app][2]

  [1]: http://yeoman.io/codelab.html
  [2]: http://localhost:9000