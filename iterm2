#!/usr/bin/env python3

import iterm2
import boto3


# To install, update, or remove packages from PyPI, use Scripts > Manage > Manage Dependencies...

def get_instance_name( instance: dict ):
    for tag in instance[ "Tags" ]:
        if tag[ "Key" ] == "Name":
            return tag[ "Value" ]


def get_ec2_instances() -> list:
    ec2_instances = [ ]
    client = boto3.client( "ec2" )
    response = client.describe_instances( Filters = [ { "Name": "tag:Name", "Values": [ "$TAG_NAME*" ] } ] )
    for reservation in response[ "Reservations" ]:
        for instance in reservation[ "Instances" ]:
            pub_dns = instance[ "PublicDnsName" ]
            name = get_instance_name( instance )
            ec2_instances.append( (name, pub_dns) )
    return ec2_instances


def trim_prefix( name: str ):
    return name.split( "$INSTANCE_PREFIX" )[ -1 ]


async def main( connection ):
    app = await iterm2.async_get_app( connection )
    window = app.current_terminal_window
    if window is not None:
        for instance in get_ec2_instances():
            name, dns = instance
            tab_name = trim_prefix( name )
            cmd = f"ssh centos@{dns}"
            tab = await window.async_create_tab( command = cmd )
            await tab.async_set_title( tab_name )
    else:
        # You can view this message in the script console.
        print( "No current window" )


iterm2.run_until_complete( main )
