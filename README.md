# OCaml Atom

Read and write Atom feeds. I specifically want to use this as a component of
a pure OCaml implementation of Planet.

First version should:

- Be able to consume at least 2 Atom feeds and emit one combined feed
  - Take two tag-based feeds from my personal site as a starting point
  - Be able to de-dupe content based on the unique IDs
- No database or storage (construct it afresh every time)
- Minimise library dependencies

As a guide, I'll consider this at 1.0.0 when it can deal with any number of
atom feeds from any sources.
