;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 5)
	(= (value c1) 12)
	(= (value c2) 4)
	(= (value c3) 9)
	(= (value c4) 5)

        (= (rate_value r0) 3.6206774686864054)
	(= (rate_value r1) 2.7559545964444343)
	(= (rate_value r2) 3.264810051641994)
	(= (rate_value r3) 1.3314358612585482)

        (= (factor) 0.2814084931339204)

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

