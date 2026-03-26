An **Encoder** is a digital circuit which combines multiple input signals to a compact **binary code**. This makes data easier to process, store and transmit.
At any given time, only one of the input signals is active, and the output is the binary code corresponding to that input position.
An Encoder has **2^n-input** lines, and **n-output** lines. 
Standard Encoders rely on the fact that only one input line is active, at any given time. However, for scenarios, when multiple input lines can be active at the same time,
a **Priority Encoder** is used, which assigns a priority level to each input line, and outputs the code corresponding to the highest priority input.
More details about encodes can be found [here](https://www.tutorialspoint.com/digital-electronics/digital-electronics-encoders.htm).
