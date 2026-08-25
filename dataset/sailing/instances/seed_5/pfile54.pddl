;; Automatically generated sailing problem
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 6.0)

		(= (d p0) -68.0)

		(= (drift_factor) 3.24504)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)