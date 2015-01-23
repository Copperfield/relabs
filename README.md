Relabs
======
A open source framework for manage remote labs. This project born in order to students can
be able to realize their laboratory practice remotely.

Motivations
-----------
A start this project as my bachelor thesis. My main motivation is maintain over
the time. I would like to receive feedback about any aspect of project.

Philosophy
----------
I believe in:
-   [KISS](http://en.wikipedia.org/wiki/KISS_principle)
-   [DRY](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself)
I think the better way to tackle
Relabs is a iteration way. Small to big.

For programming I believe in:
-   [TDD](http://en.wikipedia.org/wiki/Test-driven_development)
-   [PEP-8](https://www.python.org/dev/peps/pep-0008/) 
I love python simplicity.

Architecture
------------
I’d like kept as simple as possible. The are 3 roles which should be able to
deployment into 3 different machines connected to the internet.
1.  **Caputure****:* Right now this is a python script. it capture a webcam
images and sent to async server
2.  *Async server:* This server receive any allowed resource and and generete a
websocket url for each.
3.  *Web server:* This is UI of project. The functionality of web server is
provide to client of resources url, execute script for client request and
booking laboratory.

Tech stack
----------
I’m using a python-based tech stack:
-   [Python](https://www.python.org/)
-   [Tornado](http://www.tornadoweb.org/en/stable/)
-   [Django](https://www.djangoproject.com/)
-   [Ansible](http://www.ansible.com/home)

Roadmap
-------
I think when you want to build a generic tool for solve any problem the first
step is build a zero case. In this moment i only think about initial milestones

1.  *zero-case:* Build a dummy example application.

****NOTE** You can follow milestone details thought github issues.

License
-------
This software is under MIT license

Contributions
-------------
I really appreciate any contribution. Please fell free to send your code or
you feedback

Many thanks.
