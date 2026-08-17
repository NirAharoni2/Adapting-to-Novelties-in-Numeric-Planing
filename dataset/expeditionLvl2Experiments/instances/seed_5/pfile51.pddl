;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.056626678220255)

        (= (sled_supplies s0) 5.932696915107211)

        (= (factor_value f0) 0.6682351625621785)
		(= (factor_value f1) 0.7958576399135148)
		(= (factor_value f2) 0.81954526097478)

        (= (dummy_1_value d1_0) 0.7443546052088132)

        (= (dummy_2_value d2_0) 8.863313784389463)
		(= (dummy_2_value d2_1) 9.27505687948172)
		(= (dummy_2_value d2_2) 3.538633022073275)
		(= (dummy_2_value d2_3) 4.004143234497574)
		(= (dummy_2_value d2_4) 8.892493788880682)

        (= (dummy_3_value d3_0) 14.149675591798474)
		(= (dummy_3_value d3_1) 42.58601041978785)
		(= (dummy_3_value d3_2) 42.0499667798895)
		(= (dummy_3_value d3_3) 97.66159160835065)
		(= (dummy_3_value d3_4) 13.696206880319417)

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

