;; Automatically generated sailing problem
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 9.0)

		(= (d p0) -130.0)

		(= (drift_factor) 2.35217)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)