;; Automatically generated sailing problem
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -8.0)

		(= (d p0) 57.0)

		(= (drift_factor) 2.46212)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)