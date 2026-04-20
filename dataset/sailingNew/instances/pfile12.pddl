;; Automatically generated sailing problem
;;Setting seed to 12
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.6971)
		(= (x b0) -1.0)
		(= (y b0) 4.0)
		(= (x b1) 3.0)
		(= (y b1) 5.0)

		(= (d p0) -100.0)
		(= (d p1) 25.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)