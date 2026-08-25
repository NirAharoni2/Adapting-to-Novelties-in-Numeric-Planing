;; Automatically generated sailing problem
(define (problem instance_52)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -6.0)

		(= (d p0) -80.0)

		(= (drift_factor) 2.98773)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)