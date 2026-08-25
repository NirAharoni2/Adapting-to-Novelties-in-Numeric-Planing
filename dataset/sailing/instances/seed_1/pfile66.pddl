;; Automatically generated sailing problem
(define (problem instance_66)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -5.0)

		(= (d p0) 78.0)

		(= (drift_factor) 2.10733)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)