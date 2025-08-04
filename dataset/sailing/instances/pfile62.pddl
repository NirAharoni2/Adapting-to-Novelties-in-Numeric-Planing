;; Automatically generated sailing problem
;;Setting seed to 62
(define (problem instance_62)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.3906)
		(= (x b0) 6.0)
		(= (y b0) -1.0)

		(= (d p0) 83.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)