;; Automatically generated sailing problem
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 9.0)

		(= (d p0) 120.0)

		(= (drift_factor) 2.07973)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)