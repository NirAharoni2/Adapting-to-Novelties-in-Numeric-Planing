;; Automatically generated sailing problem
;;Setting seed to 19
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.30615)
		(= (x b0) 2.0)
		(= (y b0) 6.0)
		(= (x b1) -7.0)
		(= (y b1) -9.0)

		(= (d p0) -142.0)
		(= (d p1) -48.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)