# Justify My Kata

This week's kata deals with text justification.

1. Write a program that will full-justify text at 80 characters. Spaces should be added towards the beginning of the line, not the end. See the example below _(text from Wikipedia)_:

**Before:**

```text
Ruby was conceived on February 24, 1993. In a 1999 post to the ruby-talk mailing
list, Ruby author Yukihiro Matsumoto describes some of his early ideas about the
language:

I was talking with my colleague about the possibility of an object-oriented
scripting language. I knew Perl (Perl4, not Perl5), but I didn't like it really,
because it had the smell of a toy language (it still has). The object-oriented
language seemed very promising. I knew Python then. But I didn't like it,
because I didn't think it was a true object-oriented language — OO features
appeared to be add-on to the language. As a language maniac and OO fan for 15
years, I really wanted a genuine object-oriented, easy-to-use scripting
language. I looked for but couldn't find one. So I decided to make it.

Matsumoto describes the design of Ruby as being like a simple Lisp language at
its core, with an object system like that of Smalltalk, blocks inspired by
higher-order functions, and practical utility like that of Perl.
```

**After:**

```text
Ruby was conceived on February 24, 1993. In a 1999 post to the ruby-talk mailing
list, Ruby author Yukihiro Matsumoto describes some of his early ideas about the
language:

I  was  talking  with  my  colleague about the possibility of an object-oriented
scripting language. I knew Perl (Perl4, not Perl5), but I didn't like it really,
because  it  had the smell of a toy language (it still has). The object-oriented
language  seemed  very  promising.  I  knew  Python  then. But I didn't like it,
because  I  didn't  think  it  was a true object-oriented language — OO features
appeared  to  be  add-on to the language. As a language maniac and OO fan for 15
years,   I  really  wanted  a  genuine  object-oriented,  easy-to-use  scripting
language. I looked for but couldn't find one. So I decided to make it.

Matsumoto  describes  the design of Ruby as being like a simple Lisp language at
its  core,  with  an  object  system  like that of Smalltalk, blocks inspired by
higher-order functions, and practical utility like that of Perl.
```

2.  What if we want to make the text length customizable?
3.  Normally, we won't be breaking paragraphs into separate lines. We'll need to add some simple line wrapping.
