;; Automatically generated sailing problem
(define (problem instance_77)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -5.0)

		(= (d p0) -115.0)

		(= (drift_factor) 3.30881)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)