;; Automatically generated sailing problem
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 9.0)

		(= (d p0) -84.0)

		(= (drift_factor) 2.33463)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)