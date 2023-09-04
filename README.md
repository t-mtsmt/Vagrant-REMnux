# REMnux Vagrant Box

Install REMnux from scratch and create its Vagrant Box. The created Vagrant Box is uploaded to the [Vagrant Cloud](https://app.vagrantup.com/t-mtsmt/boxes/REMnux).

## Quick Start

```sh
mkdir REMnux
vagrant init t-mtsmt/REMnux
vagrant up
```

## Creating the Vagrant Box

### Preparing

1. Install Vagrant  
   https://developer.hashicorp.com/vagrant/downloads
   
1. Install VMware Utility driver (only VMware)  
   https://developer.hashicorp.com/vagrant/downloads/vmware

1. Install vmware-desktop plugin (only VMware)

    ```sh
    vagrant plugin install vagrant-vmware-desktop
    ```

### Creating the Vagrant Box with virtualbox provider
   
1. Boot and install REMnux VM 

    ```sh
    vagrant up --provider=virtualbox
    ```

1. Terminate REMnux VM

    ```sh
    vagrant halt
    ```

1. Convert REMnux VM to Vagrant Box

    ```sh
    vagrant package --vagrantfile vagrant_file/Vagrantfile --output remnux-v7-focal-virtualbox.box
    ```

### Creating the Vagrant Box with vmware_desktop provider

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

## License

vagrant-remnux is open-sourced software licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)

## Credits

- [Vagrant](https://www.vagrantup.com/)
- [REMnux](https://remnux.org/)
- [remnux-cli](https://github.com/REMnux/remnux-cli)
