;; Automatically generated sailing problem
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 5.0)

		(= (d p0) 50.0)

		(= (drift_factor) 2.61837)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)