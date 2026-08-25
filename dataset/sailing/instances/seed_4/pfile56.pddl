;; Automatically generated sailing problem
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -4.0)

		(= (d p0) 127.0)

		(= (drift_factor) 2.46836)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)