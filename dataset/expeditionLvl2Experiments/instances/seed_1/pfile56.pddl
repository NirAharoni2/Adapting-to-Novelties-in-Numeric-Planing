;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.310448591089038)

        (= (sled_supplies s0) 5.499517075131863)

        (= (factor_value f0) 0.7769571261871748)
		(= (factor_value f1) 0.6956590366047907)
		(= (factor_value f2) 0.5979187193608645)
		(= (factor_value f3) 0.8127025437904338)
		(= (factor_value f4) 0.5385747036080089)

        (= (dummy_1_value d1_0) 0.8930949742618843)
		(= (dummy_1_value d1_1) 0.5287624263400609)
		(= (dummy_1_value d1_2) 0.8731736555896233)
		(= (dummy_1_value d1_3) 0.6913145721601475)
		(= (dummy_1_value d1_4) 0.8412057166451763)

        (= (dummy_2_value d2_0) 6.319048638434236)
		(= (dummy_2_value d2_1) 2.1625810791119533)

        (= (dummy_3_value d3_0) 54.31170801884391)
		(= (dummy_3_value d3_1) 8.342587357900522)
		(= (dummy_3_value d3_2) 24.880612933203825)
		(= (dummy_3_value d3_3) 38.78522223087607)
		(= (dummy_3_value d3_4) 29.281445689788168)

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

