;; Automatically generated sailing problem
(define (problem instance_83)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 7.0)

		(= (d p0) -46.0)

		(= (drift_factor) 2.05228)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)