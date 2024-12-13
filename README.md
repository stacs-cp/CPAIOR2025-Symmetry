# CPAIOR-2025 - Breaking the symmetries of indistinguishable objects

Supplementary material about the "Breaking the symmetries of indistinguishable objects" paper in [CPAIOR-2025](https://sites.google.com/view/cpaior2025/home).

# Problem classes

This is the list of problem classes we use for evaluating our work. 

They are most of the Essence problem specifications which make use of the "unnamed types" feature of Essence from the [CSPLib](http://www.csplib.org).
In addition we wrote a problem specifications for the Semigroups and the Yang-Baxter problem since they are canonical examples of the unnamed types feature.

- BIBD
- Template Design
- Social Golfers
- Lam’s problem
- Production Line Sequencing
- Rack Configuration
- Vellino’s problem
- Covering Array
- Semigroups
- Yang-Baxter


# Kinds of symmetry breaking

1. Scope
- Consecutive
- AllPairs
- AllPermutations

2. Variable bundling
- Independently
- Altogether

in addition, we have shorthands for the following.
- **none**: no unnamed type symmetry breaking
- **full**: Complete-AllPermutations-Altogether

# Command line flags

Command line flag is:

    --unnamed-symmetry-breaking MODE

where MODE is one of the following.

    none
    full (alias to Complete-AllPermutations-Altogether)
    Complete-Consecutive-Independently
    Complete-Consecutive-Altogether
    Complete-AllPairs-Independently
    Complete-AllPairs-Altogether
    Complete-AllPermutations-Independently
    Complete-AllPermutations-Altogether
