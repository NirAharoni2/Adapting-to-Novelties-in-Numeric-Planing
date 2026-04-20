;; Automatically generated sailing problem
;;Setting seed to 80
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.72049)
		(= (x b0) 8.0)
		(= (y b0) -7.0)
		(= (x b1) 8.0)
		(= (y b1) 7.0)

		(= (d p0) -118.0)
		(= (d p1) -106.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)