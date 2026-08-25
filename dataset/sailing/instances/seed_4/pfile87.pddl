;; Automatically generated sailing problem
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -6.0)

		(= (d p0) -84.0)

		(= (drift_factor) 2.05682)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)