;; Automatically generated sailing problem
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 8.0)

		(= (d p0) 135.0)

		(= (drift_factor) 3.03884)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)