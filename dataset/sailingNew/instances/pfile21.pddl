;; Automatically generated sailing problem
;;Setting seed to 21
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.41933)
		(= (x b0) 9.0)
		(= (y b0) -10.0)
		(= (x b1) 5.0)
		(= (y b1) 8.0)

		(= (d p0) -58.0)
		(= (d p1) -100.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)