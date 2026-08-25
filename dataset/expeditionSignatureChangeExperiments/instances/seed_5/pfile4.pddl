;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.540264345324164)

        (= (sled_supplies s0) 0.7443402231162427)

        (= (factor_value f0) 0.8741990282423315)
		(= (factor_value f1) 0.8986133387956664)
		(= (factor_value f2) 0.92984715959379)

        (= (dummy_1_value d1_0) 0.5183157899714137)
		(= (dummy_1_value d1_1) 0.9729000925210919)
		(= (dummy_1_value d1_2) 0.5455899320858844)
		(= (dummy_1_value d1_3) 0.6703702677521111)
		(= (dummy_1_value d1_4) 0.8054137690463121)

        (= (dummy_2_value d2_0) 9.26278466979981)
		(= (dummy_2_value d2_1) 4.0596357396326015)
		(= (dummy_2_value d2_2) 9.317778574850117)

        (= (dummy_3_value d3_0) 54.96925967272565)
		(= (dummy_3_value d3_1) 31.932586564947787)
		(= (dummy_3_value d3_2) 32.36319858067434)
		(= (dummy_3_value d3_3) 18.570299774993867)
		(= (dummy_3_value d3_4) 8.741426989836775)

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

