;; Automatically generated sailing problem
;;Setting seed to 61
(define (problem instance_61)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.98891)
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) 2.0)
		(= (y b1) 7.0)

		(= (d p0) -49.0)
		(= (d p1) 70.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)