#!/usr/local/bin/bash


# Required to update system
sudo pkg upgrade

# Install Node.js - either nodeVersion or which works with latest Meteor release
<% if (nodeVersion) { %>
  NODE_VERSION=<%= nodeVersion %>
<% } else {%>
  NODE_VERSION=0.10.31
<% } %>

sudo pkg add gcc openssl git curl
sudo pkg add node-${NODE_VERSION}

