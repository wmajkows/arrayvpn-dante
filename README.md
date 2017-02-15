# arrayvpn-dante

## Installation

docker run -p 127.0.0.1:1088:1088 --cap-add=ALL -v /lib/modules:/lib/modules -v /dev:/dev -e ARRAY_PASSWORD=YOUR_ARRAY_PASSWORD -e ARRAY_USER=YOUR_ARRAY_USERNAME -e ARRAY_SERVER=YOUR_ARRAY_SERVER -d -ti devc00x/arrayvpn-dante

## Usage example

### SSH
~/.ssh/config
Host host-behind-proxy
&nbsp;&nbsp;ProxyCommand=nc -X 5 -x localhost:1088 %h %p

### Chrome
open -na /Applications/Google\ Chrome.app --args --proxy-server="socks5://127.0.0.1:1088"

