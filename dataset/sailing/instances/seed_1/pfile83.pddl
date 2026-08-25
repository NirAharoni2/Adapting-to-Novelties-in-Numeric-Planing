;; Automatically generated sailing problem
(define (problem instance_83)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -6.0)

		(= (d p0) 83.0)

		(= (drift_factor) 3.11695)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)