;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.015152455712748)

        (= (sled_supplies s0) 7.516503840869866)

        (= (factor_value f0) 0.7442278162179059)
		(= (factor_value f1) 0.6969703205782792)
		(= (factor_value f2) 0.8650616874495879)
		(= (factor_value f3) 0.9111728739902176)

        (= (dummy_1_value d1_0) 0.6681249436288103)

        (= (dummy_2_value d2_0) 3.1913355353940123)
		(= (dummy_2_value d2_1) 1.6940218292404055)

        (= (dummy_3_value d3_0) 74.86345904486744)
		(= (dummy_3_value d3_1) 84.79393372568481)

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

