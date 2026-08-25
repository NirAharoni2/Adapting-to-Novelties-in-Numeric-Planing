;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.818809030207527)

        (= (sled_supplies s0) 1.747169482427207)

        (= (factor_value f0) 0.843165829489309)
		(= (factor_value f1) 0.5486614465936033)
		(= (factor_value f2) 0.6797791425401104)

        (= (dummy_1_value d1_0) 0.804539735556415)
		(= (dummy_1_value d1_1) 0.6740543669589334)
		(= (dummy_1_value d1_2) 0.8975073953996708)
		(= (dummy_1_value d1_3) 0.970263945444933)
		(= (dummy_1_value d1_4) 0.6377703167680742)

        (= (dummy_2_value d2_0) 5.303542934831691)
		(= (dummy_2_value d2_1) 3.547135752320321)
		(= (dummy_2_value d2_2) 6.401902703235221)

        (= (dummy_3_value d3_0) 15.830775607617117)
		(= (dummy_3_value d3_1) 5.386894916734385)
		(= (dummy_3_value d3_2) 43.97167506769739)
		(= (dummy_3_value d3_3) 63.68931866298316)

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

