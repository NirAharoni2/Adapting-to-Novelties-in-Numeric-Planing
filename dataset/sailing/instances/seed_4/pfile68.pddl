;; Automatically generated sailing problem
(define (problem instance_68)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 5.0)

		(= (d p0) 139.0)

		(= (drift_factor) 2.99293)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)