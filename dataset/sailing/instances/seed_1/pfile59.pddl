;; Automatically generated sailing problem
(define (problem instance_59)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -5.0)

		(= (d p0) 72.0)

		(= (drift_factor) 3.03439)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)