# rosette-nand
my first try working with rosette by defining a nand-gate

# new package 
```
# raco pkg new hello_world
# cd hello_world
# racket main.rkt 
hello world
```

# build
 - https://defn.io/2019/05/01/github-actions-for-racket/

# run
```
% docker-compose run --entrypoint bash racket -c 'racket battleship.rkt'
Creating rosette-nand_racket_run ... done
cpu time: 621 real time: 5675 gc time: 26
Place ships as follows: (#(struct:ship 4 5 4 #t) #(struct:ship 3 7 3 #t) #(struct:ship 3 0 3 #t) #(struct:ship 2 9 4 #t) #(struct:ship 2 6 0 #t) #(struct:ship 2 2 2 #f) #(struct:ship 1 4 0 #f) #(struct:ship 1 4 9 #f) #(struct:ship 1 3 7 #t) #(struct:ship 1 8 8 #f))

    0 1 2 3 4 5 6 7 8 9    

0   - - - - S - S - - -   2
1   - - - - - - S - - -   1
2   - - S S - - - - - -   2
3   S - - - - - - S - -   2
4   S - - - - S - S - S   4
5   S - - - - S - S - S   4
6   - - - - - S - - - -   1
7   - - - S - S - - - -   2
8   - - - - - - - - S -   1
9   - - - - S - - - - -   1

    3 0 1 2 2 4 2 3 1 2   
```

# exec
```
$ raco exe battleship.rkt
% docker run --rm -ti  -v $PWD/etc/application/battleship:/application/battleship:ro --entrypoint bash marcelmaatkamp/racket-rosette -c './battleship'
cpu time: 606 real time: 5571 gc time: 24
Place ships as follows: (#(struct:ship 4 5 4 #t) #(struct:ship 3 7 3 #t) #(struct:ship 3 0 3 #t) #(struct:ship 2 9 4 #t) #(struct:ship 2 6 0 #t) #(struct:ship 2 2 2 #f) #(struct:ship 1 4 0 #f) #(struct:ship 1 4 9 #f) #(struct:ship 1 3 7 #t) #(struct:ship 1 8 8 #f))

    0 1 2 3 4 5 6 7 8 9    

0   - - - - S - S - - -   2
1   - - - - - - S - - -   1
2   - - S S - - - - - -   2
3   S - - - - - - S - -   2
4   S - - - - S - S - S   4
5   S - - - - S - S - S   4
6   - - - - - S - - - -   1
7   - - - S - S - - - -   2
8   - - - - - - - - S -   1
9   - - - - S - - - - -   1

    3 0 1 2 2 4 2 3 1 2    
```

# packages
 - ocaml
 - 

# sites
 - http://emina.github.io/rosette/ 
 - https://blog.sigplan.org/2019/11/26/building-your-first-program-synthesizer/
 - https://homes.cs.washington.edu/~bodik/ucb/cs294fa12.html
 - https://github.com/kach/recreational-rosette
 - https://dangtv.github.io/BIRDS/
 - https://github.com/uwdb/Cosette
 - http://leanprover.github.io/
 - https://github.com/Z3Prover/z3
 - https://unsat.cs.washington.edu/projects/memsynth/pldi17-aec/
 - https://cs.wellesley.edu/~cs251/s20/topics/racket.html
 - https://www.it.uu.se/edu/course/homepage/avfunpro/ht13/lectures/Racket-1-Intro.pdf
 - https://www2.cs.sfu.ca/CourseCentral/383/tjd/racket_intro.html
 - https://www.linuxlinks.com/excellent-free-tutorials-learn-racket/
 - https://defn.io/2019/05/01/github-actions-for-racket/
 - https://github.com/uhub/awesome-coq
 - https://esolangs.org/wiki/OISC

# papers
 - https://unsat.cs.washington.edu/papers/bornholt-memsynth.pdf
 - https://unsat.cs.washington.edu/papers/nelson-serval.pdf
 - https://dl.acm.org/doi/pdf/10.1145/3110269
