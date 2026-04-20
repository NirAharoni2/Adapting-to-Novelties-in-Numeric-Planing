;; Automatically generated sailing problem
;;Setting seed to 44
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.63796)
		(= (x b0) -3.0)
		(= (y b0) 3.0)
		(= (x b1) 10.0)
		(= (y b1) -8.0)

		(= (d p0) -66.0)
		(= (d p1) 96.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)