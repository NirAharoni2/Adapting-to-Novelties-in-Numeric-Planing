;; Automatically generated sailing problem
(define (problem instance_55)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 6.0)

		(= (d p0) -134.0)

		(= (drift_factor) 3.36601)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)