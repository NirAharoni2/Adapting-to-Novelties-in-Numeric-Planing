;; Automatically generated sailing problem
;;Setting seed to 1
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.21289)
		(= (x b0) -6.0)
		(= (y b0) 1.0)
		(= (x b1) 10.0)
		(= (y b1) 9.0)

		(= (d p0) 59.0)
		(= (d p1) 10.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)