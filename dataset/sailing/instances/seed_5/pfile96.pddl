;; Automatically generated sailing problem
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 10.0)

		(= (d p0) 147.0)

		(= (drift_factor) 2.6915)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)