import pytest
from click.testing import CliRunner
from my_cli.main import hello_world
from my_lib.lib import get_hello_world

def test_cli():
    """Test that CLI help works"""
    runner = CliRunner()
    result = runner.invoke(hello_world, ['--help'])
    print(result.output)  # Print the output of the CLI command
    assert result.exit_code == 0
    assert get_hello_world() in result.output

if __name__ == '__main__':
    test_cli()