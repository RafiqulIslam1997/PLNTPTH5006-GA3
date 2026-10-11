<!--
GA3 README template.
- Add your answers to each question's section below.
- For each question where we want you to add your commands,
  put the command(s) you ran in the terminal in the corresponding ```bash code block.
- Where we want to see a command's output, there is a plain ``` code block
  right below the command block: paste the output there.
- You don't need to paste the contents of your scripts into this file:
  we will look at the scripts in your `scripts` dir directly
  (so make sure you commit them!).
- Delete instructional comments like this one as you go.
-->

# GA3 answers - <Md. Rafiqul Islam>

------------------------------------------------------------------------

## Part A: Your README, data, and Git repo

### 1: Create subdirs and copy files

### 2: Initialize a Git repository, and commit the README and `.gitignore`

### 3: Commit throughout the assignment

------------------------------------------------------------------------

## Part B: Basic shell scripts

### 4: Predict the output of `echo.sh`

<!-- No need to paste the script: we'll look at scripts/echo.sh directly. -->

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08`):

- The command will print `Oct07` and `Oct08` and then will show an error as the third argument is missing and `set -u` is **enabled**.

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10`):

- The command will print `Oct07`, `Oct08` and `Oct09`. The 4th argument `Oct10` will be **ignored**.

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"`):

- The command will print `Oct07`, `Oct08` and `Oct09 Oct10` and then `finished` as the quotation mark makes `Oct09 Oct10` one argument.

*Answer* (prediction and reasoning for `bash scripts/echo.sh results/fastqc/*.html`):

- The command will print all the matching files names ended with `html` due to the use of **wild card '*'**.

### 5: Run `echo.sh` and compare with your predictions

```bash
bash scripts/echo.sh Oct07 Oct08
```

The output of the command was:

```
Oct07
Oct08
scripts/echo.sh: line 6: $3: unbound variable
```

```bash
bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10
```

The output of the command was:

``` 
Oct07
Oct08
Oct09
Finished        
```

```bash
bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"
```

The output of the command was:

``` 
Oct07
Oct08
Oct09 Oct10
Finished        
```

```bash
bash scripts/echo.sh results/fastqc/*.html
```

The output of the command was:

```
results/fastqc/S63_R1_fastqc.html
results/fastqc/S63_R2_fastqc.html
results/fastqc/S64_R1_fastqc.html
Finished      
```

*Answer*: Which output (if any) differed from your prediction, and why?

- None of the outputs differed from my prediction. 

### 6: Write the `printline.sh` script

<!-- No need to paste the script: we'll look at scripts/printline.sh directly. -->

### 7: Test `printline.sh` twice

Test 1:

```bash
bash scripts/printline.sh data/metadata.tsv 1
```

The output of the command was:

``` 
sample_id       time    treatment        
```

Test 2 (with redirection), and checking the contents of the output file:

```bash
bash scripts/printline.sh data/metadata.tsv 2 > results/metadata_line2.txt
```

And, then another command for checking file contents-

```bash
cat results/metadata_line2.txt
```

The output of the command that checks the file contents was:

``` 
S82     10dpi   cathemerium        
```

------------------------------------------------------------------------

## Part C: A script to run MultiQC

### 8: Get a MultiQC container link

*Answer*: The container link (URI) is: 
[bioconda::multiqc](oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20)

### 9: MultiQC's help info, and the MultiQC command

Code to run `multiqc --help` with the container:

```bash
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc --help
```

<!-- You don't need to paste the MultiQC help output -->

The MultiQC command to run MultiQC on `results/fastqc` with output in `results/multiqc`:

```bash
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc --outdir results/multiqc results/fastqc
```

### 10: Write the `multiqc.sh` script

<!-- No need to paste the script: we'll look at scripts/multiqc.sh directly. -->

### 11: Run `multiqc.sh`

Code to run the script:

```bash
bash scripts/multiqc.sh
```

<!-- You don't need to paste the MultiQC logging output -->

*Answer*: Number of FastQC reports MultiQC found: **44**

*Answer*: Does that match what you expected? Why/why not?
- Yes, the number matched my expectation as there are `22 samples` each having two reads `R1` and `R2`.

### 12: Make `multiqc.sh` accept arguments, and rerun it

<!-- No need to paste the script: we'll look at scripts/multiqc.sh and its Git history directly. -->

Code to rerun the script:

```bash
bash scripts/multiqc.sh results/fastqc results/multiqc
```

<!-- No need to paste any output -->

### 13: Differences between the two MultiQC runs

*Answer*: The second run printed the `input` and `output` directory names as I added **logging message**. The results were same as the input data and settings were same but MultiQC used numbered `output` names to avoid overwriting the first run files.

------------------------------------------------------------------------

## Part D: Pandoc to render Markdown

### 14: The structure of the Pandoc command

*Answer* (options and arguments, and what each does):

*Answer* (how does Pandoc know which output format to produce?):

### 15: Render your README to PDF and HTML

```bash
pandoc -o README.pdf README.md
```

- Command to render to HTML:

```bash
# Your command:
```

### 16: Should the rendered files be committed?

*Answer*: Should the rendered files be committed to your Git repo? Why/why not?

### 17: Install the PDF Viewer extension and view the PDF

*Answer*: One observation about the rendered PDF file:

## Part E: Publish your repo on GitHub

### 18: Create a GitHub repository

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 19: Connect your local repo to GitHub, and push

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 20: Create an Issue to tag the instructors

<!-- No command/output needed here -- we check your GitHub repo directly. -->

------------------------------------------------------------------------

## Bonus

### 21: Explore the MultiQC report

*Answer* (one insight you gained):

*Answer* (one thing you're confused about):

### 22: Pandoc versions

```bash
# Your command:
```

The output of the command(s) was:

```         
```

*Answer*: Is the Pandoc version available by default the most recent one?

*Answer*: Which Pandoc version are you using after loading the module?