;; Automatically generated sailing problem
;;Setting seed to 4
(define (problem instance_4)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.30204)
		(= (x b0) -5.0)
		(= (y b0) -1.0)
		(= (x b1) -3.0)
		(= (y b1) 9.0)

		(= (d p0) -69.0)
		(= (d p1) -69.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)