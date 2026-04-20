;; Automatically generated sailing problem
;;Setting seed to 64
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.83953)
		(= (x b0) 8.0)
		(= (y b0) 1.0)
		(= (x b1) -5.0)
		(= (y b1) 2.0)

		(= (d p0) -100.0)
		(= (d p1) 100.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)