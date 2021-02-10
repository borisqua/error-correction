# Transmission errors correction

I created these two applications with educational purposes. 
The target is to illustrate classic methods of protection data against distortion during transmission. 
One of the basic techniques of data protection against errors is adding redundant control information to the data.

As a starter, look at the "triplets" app, here we use a straightforward, naïve approach: doubling every bits and adding the parity bit for every such pair. 

After that, having the general understanding of error-protecting principles, 
one can look at the "hamming-code" app: 
the simple realisation of the one from the real practice method of error protection: 
the Hamming code.

## Build and run

Required JDK 14 installed.

If the JDK is ready, run the command line from the root application directory:
```bash
./start_app in.txt
```
or in the Windows command console
```cmd
start_app.cmd in.txt
```
Here *send.txt* is the name of the file with a text being sent.
You can use your file or "send.txt" from the app root directory.
