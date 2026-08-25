;; Automatically generated sailing problem
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 4.0)

		(= (d p0) 84.0)

		(= (drift_factor) 2.99815)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)