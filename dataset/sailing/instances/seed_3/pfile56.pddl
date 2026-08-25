;; Automatically generated sailing problem
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -7.0)

		(= (d p0) -97.0)

		(= (drift_factor) 2.59059)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)