"""For more click cli documentation: https://click.palletsprojects.com/en/stable/"""

import click
from my_lib.lib import get_hello_world

@click.command(help=f"This is an example CLI tool that prints {get_hello_world()}")
def hello_world():
    f"""Simple CLI example that prints '{get_hello_world()}'"""
    click.echo(get_hello_world())

if __name__ == "__main__":
    hello_world()