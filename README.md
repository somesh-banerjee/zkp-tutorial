# zk Proofs tutorial

This repository contains a tutorial on zk-proofs. It is intended to be a gentle introduction to the topic, and to provide a hands-on experience with the tools and libraries that are available for zk-proofs.

The repo contain circuits code for many basic examples in different languages such as:
- [Circom](/circom/)

## Comparison of the most popular zkp systems

|                                       | SNARKs                     | STARKs                        | Bulletproofs    |
| ------------------------------------: | -------------------------: | ----------------------------: | --------------: |
| Algorithmic complexity: prover        | O(N * log(N))              | O(N * poly-log(N))            | O(N * log(N))   |
| Algorithmic complexity: verifier      | ~O(1)                      | O(poly-log(N))                | O(N)            |
| Communication complexity (proof size) | ~O(1)                      | O(poly-log(N))                | O(log(N))       |
| - size estimate for 1 TX              | Tx: 200 bytes, Key: 50 MB  | 45 kB                         | 1.5 kb          |
| - size estimate for 10.000 TX         | Tx: 200 bytes, Key: 500 GB | 135 kb                        | 2.5 kb          |
| Ethereum/EVM verification gas cost    | ~600k (Groth16)            | ~2.5M (estimate, no impl.)    | N/A             |
| Trusted setup required?               | YES :unamused:             | NO :smile:                    | NO :smile:      |
| Post-quantum secure                   | NO :unamused:              | YES :smile:                   | NO :unamused:   |
| Crypto assumptions                    | DLP + secure bilinear pairing :unamused:          | Collision resistant hashes :smile: | Discrete log :smirk: |

[Table Source](https://github.com/matter-labs/awesome-zero-knowledge-proofs)

## Resources

- [zk friendly Hashing algorithms](https://www.zellic.io/blog/zk-friendly-hash-functions/)

## References

- [UC Berkeley zkp class](https://github.com/rdi-berkeley/zkp-course-lecture3-code/tree/main)
- [zkp puzzles by rareskills](https://github.com/RareSkills/zero-knowledge-puzzles)
- [Medium article on How SNARK works](https://medium.com/@imolfar/why-and-how-zk-snark-works-1-introduction-the-medium-of-a-proof-d946e931160) / [PDF Version](https://arxiv.org/abs/1906.07221) (Must read)
