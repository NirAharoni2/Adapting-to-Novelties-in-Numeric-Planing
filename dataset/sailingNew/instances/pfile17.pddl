;; Automatically generated sailing problem
;;Setting seed to 17
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.83437)
		(= (x b0) 8.0)
		(= (y b0) -8.0)
		(= (x b1) 5.0)
		(= (y b1) -7.0)

		(= (d p0) -88.0)
		(= (d p1) -23.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)