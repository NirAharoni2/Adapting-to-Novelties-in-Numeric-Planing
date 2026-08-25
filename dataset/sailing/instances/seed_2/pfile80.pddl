;; Automatically generated sailing problem
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 10.0)

		(= (d p0) 133.0)

		(= (drift_factor) 3.25646)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)