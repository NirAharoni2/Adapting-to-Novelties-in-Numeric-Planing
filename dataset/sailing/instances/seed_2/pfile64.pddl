;; Automatically generated sailing problem
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 9.0)

		(= (d p0) 111.0)

		(= (drift_factor) 2.13942)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)