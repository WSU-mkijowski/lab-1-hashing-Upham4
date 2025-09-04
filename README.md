[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Wyatt Upham

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository? YES

Answer the following in this file:

* How many unique users are in the data?
 * 42
* How many salts did you create?
 * 42
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

```bash
cat quiz_data.csv | awk -F "," '{print $1}' | uniq
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)? YES
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`? YES

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
00002e4540e40d33b7de6e5e465639e9296cfb73545a873cdd8bec84691eb364 - 258abortive

0000096b7637d73888309b3f16b5c5615fb926940d1734c403aab92950a22d1b - 340abouchement

```

* How many words were in your dictionary?
 * 576
* How many nonces did your code iterate over?
 * 1000
* What was the maximum number of hashes your code *could* compute given the above?
 * 576000
* What did you think about Task 2?
 * it was alright just had to wait until the right hashes showed up
* Is there a better way than brute force to attempt to get higher valued coins?
 * Yeah
* Why or why not?
 * Just having more computing power would be able to generate more coins meaning you would find those higher valued coins faster

```bash
./miner.sh | grep '000'
```

