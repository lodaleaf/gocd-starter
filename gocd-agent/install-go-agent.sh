echo "deb https://download.gocd.org /" | sudo tee /etc/apt/sources.list.d/gocd.list
curl https://download.gocd.org/GOCD-GPG-KEY.asc | sudo apt-key add -
sudo apt-get update

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jre

sudo apt-get install go-agent

# sudo /etc/init.d/go-agent start

# Configuring the go-agent
# After installing the go-agent service, you must first configure the service with the hostname (or IP address) of your GoCD server, in order to do this -

# Open /etc/default/go-agent in your favourite text editor.
# Change the IP address (127.0.0.1) in the line GO_SERVER_URL=https://127.0.0.1:8154/go to the hostname (or IP address) of your GoCD server.
# Save the file and exit your editor.
# Run /etc/init.d/go-agent [start|restart] to (re)start the agent.
# Note: You can override default environment for the GoCD agent by editing the file /etc/defaults/go-agent

