;; Automatically generated sailing problem
;;Setting seed to 9
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.58534)
		(= (x b0) -8.0)
		(= (y b0) -3.0)
		(= (x b1) -4.0)
		(= (y b1) -5.0)

		(= (d p0) 91.0)
		(= (d p1) -46.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)