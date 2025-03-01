# Solution

## **Part 1: Lost Commit (Recover Erased Killcode)**
### **Solution:**
1. Use `git reflog` to find the lost commit.
2. Recover it using `git checkout <commit-hash>` or `git reset --hard <commit-hash>`.
3. Read the `killcode.txt` file.

**PART1:** `K1LLC0D3_L05T`

---

## **Part 2: Hidden Branch (Jester's Memory File)**
### **Solution:**
1. Use `git fsck --lost-found` to check for orphaned commits.
2. Restore the branch with `git checkout -b Jester_Memory <commit-hash>`.
3. Read the `memory_dump.txt` file.

**PART2:** `M3M0RY_H1DD3N`

---

## **Part 3: Steganography in Commit Messages**
### **Solution:**
1. Use `git log --pretty=oneline -all` to inspect commit messages.
2. Look for hidden text within commit messages.

**PART3:** `F1N4L_C0D3`

---

## **Part 4: Stash Attack (Forgotten Log File)**
### **Solution:**
1. List stashed files using `git stash list`.
2. Recover the stash with `git stash pop` or `git stash apply`.
3. Read `logstash.txt`.

**PART4:** `5T45H3D_L0G`

---

## **Part 5: Hidden Data in Blobs**
### **Solution:**
1. Use `git fsck` to find dangling blobs.
2. Extract blob content using `git cat-file -p <blob-hash>`.

**PART5:** `G1T0BJ3CT_M3M`

