;; Automatically generated sailing problem
;;Setting seed to 93
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.53608)
		(= (x b0) -2.0)
		(= (y b0) -9.0)
		(= (x b1) 8.0)
		(= (y b1) 0.0)

		(= (d p0) 103.0)
		(= (d p1) -19.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)