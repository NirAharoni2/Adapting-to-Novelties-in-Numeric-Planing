;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.933777908778474)

        (= (sled_supplies s0) 2.4071580794246015)

        (= (factor_value f0) 0.9514481317512022)
		(= (factor_value f1) 0.5492774466742173)
		(= (factor_value f2) 0.8517723312058045)
		(= (factor_value f3) 0.8752589489646401)
		(= (factor_value f4) 0.6126847713602716)

        (= (dummy_1_value d1_0) 0.7285283555611153)
		(= (dummy_1_value d1_1) 0.98720879523024)

        (= (dummy_2_value d2_0) 3.9409147013459225)
		(= (dummy_2_value d2_1) 7.861137809434177)

        (= (dummy_3_value d3_0) 17.362637357563692)
		(= (dummy_3_value d3_1) 67.05082274673632)

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

