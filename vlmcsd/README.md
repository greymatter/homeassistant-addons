# Home Assistant Add-on: [vlmcsd](https://github.com/mikolatero/docker-vlmcsd)

## Introduction

vlmcsd is a replacement for Microsoft's KMS server.

It contains vlmcs, a KMS test client, mainly for debugging purposes, that also can "charge" a genuine KMS server designed to run on an always-on or often-on device, e.g. router, NAS Box, ...intended to help people who lost activation of their legally-owned licenses, e.g. due to a change of hardware (motherboard, CPU, ...)

vlmcsd is not a one-click activation or crack tool intended to activate illegal copies of software (Windows, Office, Project, Visio)

## Installation

To install this Hass.io add-on you need to add the greymatter add-on repository
first:

You can do this by navigating to the "Add-on Store" tab in the Supervisor panel and then entering https://github.com/greymatter/homeassistant-addons in the "Add new repository by URL" field.

Now scroll down and select the "vlmcsd" add-on.
Press install to download the add-on and unpack it on your machine. This can take some time.

Start the add-on, check the logs of the add-on to see if everything went well.

On first start-up, a new configuration is created. This can take some time.
Please be patient. 

## Configuation

Example add-on configuration:

no configuration is needed, vlmcsd will be exposed on port 1688
