
brickdd 
===========================================================================

Tinkerforge `brickd`-daemon wrapped in a docker container.


Starting a container via `Dockerfile`

.. code-block:: bash

    docker run -it -v /dev/bus/usb:/dev/bus/usb --privileged -p 0.0.0.0:4223:4223 ffof/brickdd

Starting container via `docker-compose.yml`.

.. code-block:: bash

    docker-compose up

.. note::

    Source of compose file: 

    .. include:: docker-compose.yml
        :code: yaml
        :number-lines:
