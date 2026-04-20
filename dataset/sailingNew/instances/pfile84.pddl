;; Automatically generated sailing problem
;;Setting seed to 84
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.57405)
		(= (x b0) -9.0)
		(= (y b0) 9.0)
		(= (x b1) 0.0)
		(= (y b1) -10.0)

		(= (d p0) -102.0)
		(= (d p1) 85.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)