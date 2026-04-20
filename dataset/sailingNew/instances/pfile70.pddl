;; Automatically generated sailing problem
;;Setting seed to 70
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.28246)
		(= (x b0) -1.0)
		(= (y b0) 0.0)
		(= (x b1) -8.0)
		(= (y b1) 3.0)

		(= (d p0) -122.0)
		(= (d p1) -57.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)