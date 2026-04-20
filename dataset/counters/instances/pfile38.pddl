;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 7)
	(= (value c1) 2)
	(= (value c2) 0)
	(= (value c3) 1)
	(= (value c4) 4)

        (= (rate_value r0) 3.043750836621304)
	(= (rate_value r1) 3.214033461304367)
	(= (rate_value r2) 3.1844480928524375)
	(= (rate_value r3) 2.1508216894826675)

        (= (factor) 0.9748839937259922)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
		)
	)
)

