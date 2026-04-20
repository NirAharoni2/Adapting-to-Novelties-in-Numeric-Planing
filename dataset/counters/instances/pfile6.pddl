;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 0)
	(= (value c2) 4)
	(= (value c3) 0)

        (= (rate_value r0) 3.8028678477088347)
	(= (rate_value r1) 1.8983833584395664)
	(= (rate_value r2) 3.202829669481206)
	(= (rate_value r3) 3.1428974148840036)

        (= (factor) 0.6479955601714394)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
		)
	)
)

