;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.188466481493386)

        (= (sled_supplies s0) 3.1943253408790966)

        (= (factor_value f0) 0.7560741838117053)
		(= (factor_value f1) 0.8936998206135244)
		(= (factor_value f2) 0.9053970797951609)

        (= (dummy_1_value d1_0) 0.601954094402553)
		(= (dummy_1_value d1_1) 0.7718331593093478)

        (= (dummy_2_value d2_0) 5.9564144971901705)
		(= (dummy_2_value d2_1) 4.056988509983361)

        (= (dummy_3_value d3_0) 30.308578603558647)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

