;; Automatically generated sailing problem
;;Setting seed to 100
(define (problem instance_100)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.09165)
		(= (x b0) -8.0)
		(= (y b0) 1.0)

		(= (d p0) -11.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)