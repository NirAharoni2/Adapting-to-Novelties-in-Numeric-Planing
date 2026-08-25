;; Automatically generated sailing problem
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 7.0)

		(= (d p0) -54.0)

		(= (drift_factor) 3.09484)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)