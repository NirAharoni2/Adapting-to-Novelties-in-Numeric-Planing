;; Automatically generated sailing problem
;;Setting seed to 91
(define (problem instance_91)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.26506)
		(= (x b0) -8.0)
		(= (y b0) -8.0)
		(= (x b1) -8.0)
		(= (y b1) 2.0)

		(= (d p0) 107.0)
		(= (d p1) -140.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)