;; Automatically generated sailing problem
(define (problem instance_59)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -6.0)

		(= (d p0) -139.0)

		(= (drift_factor) 2.2246)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)