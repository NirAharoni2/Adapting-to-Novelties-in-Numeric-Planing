;; Automatically generated sailing problem
;;Setting seed to 66
(define (problem instance_66)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.72019)
		(= (x b0) -7.0)
		(= (y b0) -3.0)
		(= (x b1) 2.0)
		(= (y b1) 2.0)

		(= (d p0) -79.0)
		(= (d p1) -77.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)