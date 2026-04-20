;; Automatically generated sailing problem
;;Setting seed to 81
(define (problem instance_81)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.83024)
		(= (x b0) 8.0)
		(= (y b0) 6.0)
		(= (x b1) 10.0)
		(= (y b1) 1.0)

		(= (d p0) -148.0)
		(= (d p1) -70.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)