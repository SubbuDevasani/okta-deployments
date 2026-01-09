1. Update Package Repository
    $ sudo apt upgrade

2. Upgrade Existing Packages
    $ sudo apt upgrade

3. Install Python 3
    $ sudo apt install python3

4. Install Python Package Manager (pip)
    $ sudo apt install python3-pip

5. Install Additional Tools for Development
    $ sudo apt install python3-dev python3-venv build-essential

6. Export Dev env as below to fetch dev OKTA configs
    $ export OKTA_API_TOKEN="00ZdcRd4znTik54Yiw3Es9vkCDe8IIGEwlVagnVd3i"
    $ export OKTA_DOMAIN="demo-dev-deployments.okta.com"

7. Execute Python script to fetch dev configs
    $ python final_dev_till_auth_server.py