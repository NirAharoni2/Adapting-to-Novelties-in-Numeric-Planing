;; Automatically generated sailing problem
(define (problem instance_62)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -5.0)

		(= (d p0) 79.0)

		(= (drift_factor) 2.25205)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)