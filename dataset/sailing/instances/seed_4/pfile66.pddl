;; Automatically generated sailing problem
(define (problem instance_66)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -6.0)

		(= (d p0) 77.0)

		(= (drift_factor) 3.27126)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)