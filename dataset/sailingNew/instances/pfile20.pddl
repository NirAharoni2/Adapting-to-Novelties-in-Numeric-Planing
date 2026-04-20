;; Automatically generated sailing problem
;;Setting seed to 20
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.83188)
		(= (x b0) -5.0)
		(= (y b0) 6.0)
		(= (x b1) 5.0)
		(= (y b1) 6.0)

		(= (d p0) -107.0)
		(= (d p1) -51.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)