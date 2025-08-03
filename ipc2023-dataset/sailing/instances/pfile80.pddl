;; Automatically generated sailing problem
;;Setting seed to 80
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.88541)
		(= (x b0) -2.0)
		(= (y b0) -7.0)

		(= (d p0) 41.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)