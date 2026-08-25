;; Automatically generated sailing problem
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -4.0)

		(= (d p0) 115.0)

		(= (drift_factor) 2.87878)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)