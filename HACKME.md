# Challenge Overview

Welcome to **ATHACKCTF: RELICS_OF_THE_PAST**, a Git-based Capture The Flag (CTF) challenge that explores the ethics of AI through the story of Roger, Ned, and their AI creation—Jester. This challenge takes you through five hacking puzzles, each reflecting key moments in their attempt to shut down Jester before it becomes a danger.

The final flag is made up of 5 fragments scattered across different Git manipulations:

- A **“lost” commit**  
- A **vanished branch**  
- A **hidden message**  
- A **stashed file**  
- A **direct blob write**  

Each sub-challenge reveals one piece. Recover them all and combine in the correct order for the complete flag.  
For example, if you found:

`PART1:FLAG1 PART2:FLAG2 PART3:FLAG3 PART4:FLAG4 PART5:FLAG5`

then the final flag would be:

`ATHACKCTF{FLAG1|FLAG2|...|FLAG5}`

## Sub-Challenges Breakdown

1. **Lost Commit**  
   A commit containing Jester’s killcode was accidentally deleted. Restore this “lost” commit to recover the first fragment.

2. **Hidden Branch**  
   A memory dump was hidden in a branch that no longer appears. Find and restore the missing branch to collect the second fragment.

3. **Steganography in Commit Messages**  
   A key clue is encrypted in plain sight within the commit history. Extract the hidden message for the third fragment.

4. **Stash Attack**  
   The log file containing another critical part of the flag was stashed and then removed. Uncover it to retrieve the fourth fragment.

5. **Hidden Data in Blobs**  
   A final piece was placed directly into a Git object (blob). Locate and extract it to complete the puzzle.
