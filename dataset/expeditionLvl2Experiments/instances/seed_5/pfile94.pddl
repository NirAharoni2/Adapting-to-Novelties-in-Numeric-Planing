;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.23980804926294)

        (= (sled_supplies s0) 7.2374664782171125)

        (= (factor_value f0) 0.777774238196717)

        (= (dummy_1_value d1_0) 0.5882498473972793)
		(= (dummy_1_value d1_1) 0.7701805742594496)
		(= (dummy_1_value d1_2) 0.7486073132985145)
		(= (dummy_1_value d1_3) 0.5986649357417141)
		(= (dummy_1_value d1_4) 0.7214048150858622)

        (= (dummy_2_value d2_0) 8.525353070969716)
		(= (dummy_2_value d2_1) 6.772991374046965)
		(= (dummy_2_value d2_2) 3.9614263803568894)
		(= (dummy_2_value d2_3) 3.14687589781907)
		(= (dummy_2_value d2_4) 6.6726315689991)

        (= (dummy_3_value d3_0) 55.72497904242502)
		(= (dummy_3_value d3_1) 30.497719083717733)
		(= (dummy_3_value d3_2) 47.64111683424628)
		(= (dummy_3_value d3_3) 41.26958795305013)
		(= (dummy_3_value d3_4) 63.09320741486673)

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

