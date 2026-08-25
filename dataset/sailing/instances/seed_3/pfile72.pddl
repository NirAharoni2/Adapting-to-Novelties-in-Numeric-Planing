;; Automatically generated sailing problem
(define (problem instance_72)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 4.0)

		(= (d p0) -113.0)

		(= (drift_factor) 3.13128)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)