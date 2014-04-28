# OCaml Atom

Read and write Atom feeds. I specifically want to use this as a component of
a pure OCaml implementation of Planet.

My initial aims are:

- Only consider *my own* Atom feeds for now
- Initially, be able to parse and emit just one Atom feed
- Then be able to merge 2+ feeds, specifically:
  - Use tag-based feeds from my personal site as starting points
  - Be able to de-dupe content
- No database or storage (construct it afresh every time)
- Minimise library dependencies

As a guide, I'll consider this at 1.0.0 when it can deal with any number of
atom feeds from any sources.
