;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 0)
	(= (value c1) 6)
	(= (value c2) 10)
	(= (value c3) 4)
	(= (value c4) 9)
	(= (value c5) 2)

        (= (rate_value r0) 1.2228511144065908)
	(= (rate_value r1) 1.8225696719231474)
	(= (rate_value r2) 1.4855246745579767)
	(= (rate_value r3) 2.6982306710342057)

        (= (factor) 0.1868557369742299)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
		)
	)
)

