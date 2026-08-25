;; Automatically generated sailing problem
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 6.0)

		(= (d p0) 66.0)

		(= (drift_factor) 2.38701)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)