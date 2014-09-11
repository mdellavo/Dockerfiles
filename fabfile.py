from fabric.api import *

def deploy(image, path):
    local('docker build -t {0} {1}'.format(image, path))
    filename = image.replace('/', '-') + '.tar'
    local('docker save -o {0} {1}'.format(filename, image))
    put(filename, '~/{0}'.format(filename))
    sudo('docker load -i {0}'.format(filename))
