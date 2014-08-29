# String Decryption

This repo features two files: `lib/decode_original.rb` and `lib/decode_refactored.rb`. Both approaches are tested so run `rspec` to see those results. Furthermore, they both offer idential functionality, but the latter is at least one-hundred times faster (more with longer strings) than the former. They decrypt strings in the following ways:

1. Find the pair of identical characters that are farthest apart, and contain no pairs of identical characters between them (e.g. for "abcbba" the chosen characters should be the first and last `b`). In the event of a tie, choose the left-most pair (e.g. for "aabcbded" the chosen characters should be the first and second "b").

2. Remove one of the characters in the pair, and move the other to the end of the string. (e.g. for "abcbba" you'd end up with "acbab").

3. Repeat steps 1 and 2 until no repeated characters remain.

4. If the resulting string contains an underscore, remove it and any characters after it (e.g. "abc_def" would become "abc").

5. The remaining string is the answer. For example, for the input "daccadfghd_i" the answer is "fgh".
