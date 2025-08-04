;; Automatically generated sailing problem
;;Setting seed to 70
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.97794)
		(= (x b0) -7.0)
		(= (y b0) -2.0)

		(= (d p0) -140.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)