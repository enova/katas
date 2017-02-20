# The Drunken Bishop

All of us have generated SSH keys to go about our work every day. When we do this, OpenSSH presents us with a fingerprint and a 17 x 9 randomart not unlike this:

```text
Fingerprint: b2:ce:86:88:10:d3:3b:4e:e1:a4:10:25:1f:08:bd:89

+-----------------+
|++o              |
|oo..             |
| +.o             |
|E *              |
|.* o  . S        |
|o =    o         |
|.+ o ..          |
|. o .o.          |
|     .o          |
+-----------------+
```

This "art" is generated from the SSH key fingerprint using an algorithm known as The Drunken Bishop.

## The Algorithm

The generation of this art focuses around the movement of the "bishop". The bishop starts at the center of the grid (column 8, row 4), and its movement is determined by the SSH key fingerprint. The generator reads each byte in the fingerprint sequentially. Within each byte, it uses each bit-pair in order from most significant to least significant to specify a direction:

| Bits | Direction  |
|:----:|:-----------|
|  00  | Up/Left    |
|  01  | Up/Right   |
|  10  | Down/Left  |
|  11  | Down/Right |


In the case of the above fingerprint example, the first two bytes would be processed in this order:

<table>
    <tr>
        <th>Hex</th>
        <th colspan="4">b2</th>
        <th colspan="4">ce</th>
    </tr>
    <tr>
        <th>Binary</th>
        <td>10</td>
        <td>11</td>
        <td>00</td>
        <td>10</td>
        <td>11</td>
        <td>00</td>
        <td>11</td>
        <td>10</td>
    </tr>
    <tr>
        <th>Order</th>
        <td>4</td>
        <td>3</td>
        <td>2</td>
        <td>1</td>
        <td>8</td>
        <td>7</td>
        <td>6</td>
        <td>5</td>
    </tr>
</table>

The bishop would then move in these directions:

1. Down and Left
2. Up and Left
3. Down and Right
4. Down and Left
5. Down and Left
6. Down and Right
7. Up and Left
8. Down and Right

There are two special cases where the bishop would not follow this pattern.

1. If the bishop is against a wall, and the move would put the bishop past the wall, the bishop will only move in the direction that it has freedom. For example, if it is at column 0 and is supposed to move up and left, it will only move up.
2. If the bishop is in a corner, and the move is in the direction of the corner, the bishop will not move. For example, if it is at column 0, row 0, and is supposed to move up and left, it will not move.

The value of each space on the grid is a representation of the number of times it is visited by the bishop. The character shown in the space has the following values:


<table class="wrapped">
  <tbody>
    <tr>
      <th>Value</th>
      <td style="text-align: center;">0</td>
      <td style="text-align: center;">1</td>
      <td style="text-align: center;">2</td>
      <td style="text-align: center;">3</td>
      <td style="text-align: center;">4</td>
      <td style="text-align: center;">5</td>
      <td style="text-align: center;">6</td>
      <td style="text-align: center;">7</td>
      <td style="text-align: center;">8</td>
      <td style="text-align: center;">9</td>
      <td style="text-align: center;">10</td>
      <td style="text-align: center;">11</td>
      <td style="text-align: center;">12</td>
      <td style="text-align: center;">13</td>
      <td colspan="1" style="text-align: center;">14</td>
      <td colspan="1" style="text-align: center;">15</td>
      <td colspan="1" style="text-align: center;">16</td>
    </tr>
    <tr>
      <th>Character</th>
      <td style="text-align: center;"> </td>
      <td style="text-align: center;">.</td>
      <td style="text-align: center;">o</td>
      <td style="text-align: center;">+</td>
      <td style="text-align: center;">=</td>
      <td style="text-align: center;">*</td>
      <td style="text-align: center;">B</td>
      <td style="text-align: center;">O</td>
      <td style="text-align: center;">X</td>
      <td style="text-align: center;">@</td>
      <td style="text-align: center;">%</td>
      <td style="text-align: center;">&amp;</td>
      <td style="text-align: center;">#</td>
      <td style="text-align: center;">/</td>
      <td colspan="1" style="text-align: center;">^</td>
      <td colspan="1" style="text-align: center;">S</td>
      <td colspan="1" style="text-align: center;">E</td>
    </tr>
  </tbody>
</table>

The 15 (S) and 16 (E) indicate the start and end of the bishop's traversal, and will always override the value that would otherwise be there.


## The Exercise

Your assignment is to create a Ruby program that will take the hexadecimal representation of the fingerprint from STDIN and output the ASCII art representation to STDOUT.


## Sources

[OpenSSH Keys and The Drunken Bishop](https://pthree.org/2013/05/30/openssh-keys-and-the-drunken-bishop/) by Aaron Toponce
