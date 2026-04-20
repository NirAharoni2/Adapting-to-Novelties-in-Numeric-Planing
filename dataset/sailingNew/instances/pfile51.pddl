;; Automatically generated sailing problem
;;Setting seed to 51
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.58562)
		(= (x b0) 7.0)
		(= (y b0) 9.0)
		(= (x b1) 8.0)
		(= (y b1) 1.0)

		(= (d p0) 80.0)
		(= (d p1) -95.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)