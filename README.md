# UHPC-RF-Master-1.0

The UHPC-RF-Master is a software package that simulates chemically reacting systems with real-fluid effects incoporated in a robust manner via high-order mixture Virial Equation of State and ab initio two- to multi-body intermolecular potentials.

Currently, it contains the following reactor modules, with more under development:

1. Constant-Volume Reactor Module

2. Jet-Stirred Reactor Module

For the Constant-Volume Reactor Module, please cite:

1. M. Wang, R. Tang, X. Ren, Y. Cui, MMJ. Li, SY. Leu, CSK. Lin, S. Cheng*, Ab initio intermolecular interactions mediate thermochemically real-fluid effects that affect system reactivity: The first application of high-order Virial EoS and first-principles multi-body potentials in trans-/super-critical autoignition modelling, Combust. Flame 272 (2025) 113844. https://doi.org/10.1016/j.combustflame.2024.113844
2. Mingrui Wang, Ruoyue Tang, Xinrui Ren, Hongqing Wu, Yuxin Dong, Ting Zhang, Song Cheng*, Comprehensive characterization of real-fluid effects on autoignition behavior via high-order Virial equation of state coupled with ab initio multi-body intermolecular potentials, Combustion and Flame, under review.
   
For the Jet-Stirred Reactor Module, please cite:

1. M.Wang, R. Tang, X. Ren, H. Wu, T. Zhang, S. Cheng*, The first application of high-order Virial equation of state and ab initio multi-body potentials in modeling supercritical oxidation in jet-stirred reactors, Fuel 15 (2025) 382. https://doi.org/10.1016/j.fuel.2024.133753
2. Mingrui Wang, Ruoyue Tang, Xinrui Ren, Hongqing Wu, Yuxin Dong, Ting Zhang, Song Cheng*, Investigation of real-fluid effects on NH3 oxidation and blending characteristics at supercritical conditions via high-order Virial equation of state coupled with ab initio intermolecular potentials, Combustion and Flame 272 (2025) 113887. https://doi.org/10.1016/j.combustflame.2024.113887.
   
# Authors

UHPC-RF-Master-1.0 was created by The Ultra-High-Combustion Laboratory at The Hong Kong Polytechnic University, with significant contributions from Dr Mingrui WANG and Prof Song CHENG, and technical inputs from Adrian Lua.

# Installation

The executable was packaged in Linux, and hence the application must be run on linux. The application can however either be downloaded on other systems such as Windows or MacOS and transferred to Linux or be directly downloaded from Linux. 

To install, simply download the contents in this repository by clicking the "code" button and selecting "Download Zip".

The <code>app</code> and <code>example</code> folders will be downloaded on your local computer and can be run with the instructions below.

Alternatively, the repository can also be cloned. 

# Applications

For the Constant-Volume Reactor Module, the application is <code>IDT_calculation_CV</code> and can be found in <code>app/ConstantVolume</code>.

For the Jet-Stirred Reactor Module, the application is <code>IDT_calculation_PSR</code> and can be found in <code>app/PSR</code>.

# How to Run 

Examples for the applications can be found in <code>example</code>. For your calculations, create your own folder with the same set of files as the example files. 

Inside each example folder is an input text file <code>input.txt</code> and a shell script <code>run.sh</code>. 

<code>input.txt</code> is for specifying inputs to the simulation. 

<code>run.sh</code> is for running the simulation. 

*Modifying the Input File*

The instructions for input are written in lines 1-19 in <code>input.txt</code>. Make sure to start your inputs from line 21, and separate each input with a comma. DO NOT start your input before line 21, as they will not be read.
If you wish to run multiple cases at once, write your next input at the next line (i.e. line 22, and so on). 


*Modifying the Shell Script*

Lines 2-6 are information regarding your computer. Modify as necessary.

To specify the path of the application in your computer, modify the line as follows:

<code>EXEC=/directory_of_application/IDT_calculation_(modulename)</code>

To specify the path of your input file, modify the line as follows:

<code>INPUT=/directory_of_input_file/input.txt</code>

To specify the path of your output, modify the line as follows:

<code>OUTFILE=/directory_of_desired_output_files/results/result.out</code>

*Converting <code>run.sh</code> to UNIX* /n

Before running, convert <code>run.sh</code> to UNIX by calling <code>dos2unix run.sh</code>

*Ensure proper permissions*
If there are issues with permissions in Linux, enable write permissions for both <code>run.sh</code> and the application.

<code>chmod +x run.sh</code> in the directory of <code>run.sh</code>.
<code>chmod +x IDT_calculation_(modulename)</code> in the directory of <code>IDT_calculation_(modulename)</code>.

Once the following are properly configured, the application can be run by calling <code>run.sh</code>.

The terminal will display the progress in the form of text. Once the calculation is finished, the following should appear:

======End of Program=====

Time of execution: ______ minutes
