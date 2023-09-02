# vagrant-remnux

## Creating the REMnux Box

### Preparing

1. Install Vagrant  
   https://developer.hashicorp.com/vagrant/downloads
   
1. Install VMware Utility driver (only VMware)
   https://developer.hashicorp.com/vagrant/downloads/vmware

1. Install vmware-desktop plugin (only VMware)

    ```sh
    vagrant plugin install vagrant-vmware-desktop
    ```

### Creating the Box with virtualbox provider
   
1. Boot and install REMnux VM 

    ```sh
    vagrant up
    ```

1. Terminate REMnux VM

    ```sh
    vagrant halt
    ```

1. Convert REMnux VM to Vagrant Box

    ```sh
    vagrant package --vagrantfile vagrant_file/Vagrantfile --output remnux-v7-focal-virtualbox.box
    ```

### Creating the Box with vmware_desktop provider

1. Boot and install REMnux VM 

    ```sh
    vagrant up --provider=vmware_desktop
    ```

1. Terminate REMnux VM

    ```sh
    vagrant halt
    ```

1. Convert REMnux VM to Vagrant Box

    ```sh
    vagrant package --vagrantfile vagrant_file/Vagrantfile --output remnux-v7-focal-vmware_desktop.box
    ```