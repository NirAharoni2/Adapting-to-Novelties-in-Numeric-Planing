;; Automatically generated sailing problem
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 4.0)

		(= (d p0) -61.0)

		(= (drift_factor) 2.17103)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)