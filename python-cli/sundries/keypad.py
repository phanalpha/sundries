import re
from functools import reduce

import click


@click.command()
@click.argument('wording')
def dial(wording: str):
    keypad = [
        ('ABC', '2'),
        ('DEF', '3'),
        ('GHI', '4'),
        ('JKL', '5'),
        ('MNO', '6'),
        ('PQRS', '7'),
        ('TUV', '8'),
        ('WXYZ', '9'),
        (' ', '0'),
        ('^0-9', '1'),
    ]

    click.echo(reduce(lambda s, k: re.sub('[{}]'.format(k[0]), k[1], s), keypad, wording.upper()))


if __name__ == '__main__':
    dial()
