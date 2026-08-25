;; Automatically generated sailing problem
(define (problem instance_95)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 7.0)

		(= (d p0) 143.0)

		(= (drift_factor) 2.9516)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)