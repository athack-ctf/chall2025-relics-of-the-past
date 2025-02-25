<#
  -------------------------------------------------------------------------
  FINAL FLAG ASSEMBLY INSTRUCTIONS:
  -------------------------------------------------------------------------
  This repository contains 5 parts labeled PART1 through PART5. 
  Collect each part, note its order (e.g., PART1, PART2, ... PART5),
  then concatenate the values (without the labels) in that sequence. 
  Finally, wrap them in ATHACKCTF{ ... }.

  The final flag would be: ATHACKCTF{ABCXYZ}

  In this scenario, you will find 5 parts total.
  Have fun exploring the repo!
#>

# CTF Directory Setup
$repoPath = "ATHACK_JesterCTF"
mkdir $repoPath -ErrorAction SilentlyContinue
cd $repoPath
git init


# Challenge 1: Lost Commit (Recover Erased Killcode)
echo "Initial Commit" > dummy.txt
git add dummy.txt
git commit -m "Initial dummy commit"

# Add killcode.txt (now with PART1)
echo "PART1:K1LLC0D3_L05T" > killcode.txt
git add killcode.txt
git commit -m "Jester's shutdown sequence stored (PART1)."

# Simulate accidental deletion
git reset --hard HEAD~1  # Removes last commit


# Challenge 2: Hidden Branch

git branch -M main
git checkout -b "Jester_Memory"
echo "PART2:M3M0RY_H1DD3N" > memory_dump.txt
git add memory_dump.txt
git commit -m "Jester’s memory fragment recorded (PART2)."

# Hide the branch
git checkout main
git branch -D Jester_Memory  

# Challenge 3: Steganography in Commit Messages

git commit --allow-empty -m "System Check: All Clear"
git commit --allow-empty -m "Log entry #1 PART3:F1N4L_C0D3 stored."
git commit --allow-empty -m "No anomalies detected."


# Challenge 4: Stash Attack 
echo "PART4:5T45H3D_L0G" > logstash.txt
git add logstash.txt
git stash

# Check if logstash.txt exists before attempting to remove it
if (Test-Path "logstash.txt") {
    rm logstash.txt  # Remove file after stashing
}


# Challenge 5: Hidden Data in Blobs
echo "PART5:G1T0BJ3CT_M3M" | git hash-object -w --stdin


# Cleanup and Export .git

Compress-Archive -Path .git -DestinationPath "../ATHACK_JesterCTF.zip"

# Ensure no open handles before removing directory
cd ..
Start-Sleep -Seconds 2  # Give time for cleanup
Remove-Item -Recurse -Force $repoPath -ErrorAction SilentlyContinue

Write-Host "Jester's Memory Dump Created! (ATHACK_Relics_Of_the_Past.zip)" -ForegroundColor Green
