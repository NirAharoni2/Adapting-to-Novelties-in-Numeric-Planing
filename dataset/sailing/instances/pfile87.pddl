;; Automatically generated sailing problem
;;Setting seed to 87
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.51019)
		(= (x b0) -8.0)
		(= (y b0) -8.0)

		(= (d p0) 77.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)