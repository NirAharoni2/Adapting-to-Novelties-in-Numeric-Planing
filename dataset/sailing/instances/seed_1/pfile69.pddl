;; Automatically generated sailing problem
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 5.0)

		(= (d p0) 62.0)

		(= (drift_factor) 3.13663)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)