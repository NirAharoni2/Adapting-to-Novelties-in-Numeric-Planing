;; Automatically generated sailing problem
(define (problem instance_63)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 3.0)

		(= (d p0) 61.0)

		(= (drift_factor) 2.58021)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)