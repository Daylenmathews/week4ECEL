# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

Summarize your learnings from the lab here.

In this lab, we learned how to simplify digital logic equations using K-maps, Sum of Products (SOP), and Product of Sums (POS). At first, writing out the full “naive” version from the truth table looked really messy and long, but once I moved it into a K-map, the simplification made a lot more sense. Grouping the 1’s together gave me a cleaner SOP equation, and grouping the 0’s gave me the POS version. It was cool to see how all three versions (naive, SOP, POS) produced the same outputs, but the simplified ones were way shorter. I also saw how Vivado does a lot of this optimization automatically, which shows why tools like this are important in real circuit design.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
The group of 1s or 0s that we select in the KMap are able to go across edges because in a K-map, the left and right sides and the top and bottom are actually “neighbors.” The map wraps around like a torus, so even though they look far apart on the grid, the binary values only change by one bit. That’s why we can group across edges, the adjacency is still valid.

### Why are the names Sum of Products and Products of Sums?
The names literally describe how the equations are built. In SOP, you take a bunch of little “products” (AND terms) and then add them all together with ORs. In POS, it’s flipped and you take a bunch of “sums” (OR terms) and then multiply them with ANDs. So basically, the name just tells you which operation is on the outside: OR for SOP, AND for POS.

### Open the test.v file – how are we able to check that the signals match using XOR?

XOR is like a “difference checker.” If two signals are the same, the XOR gives a 0. If they’re different, it gives a 1. So when we XOR the outputs of our naive, SOP, and POS circuits, we’re basically asking: “Do these match?” If the XOR stays at 0 the whole time, then we know all three versions are working exactly the same.