;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.228576932635406)

        (= (sled_supplies s0) 2.346207167645578)

        (= (factor_value f0) 0.6529612472414648)
		(= (factor_value f1) 0.8144481458031753)
		(= (factor_value f2) 0.5489359005331604)

        (= (dummy_1_value d1_0) 0.5674796650361154)
		(= (dummy_1_value d1_1) 0.9045277581476368)
		(= (dummy_1_value d1_2) 0.8820313329440065)
		(= (dummy_1_value d1_3) 0.8032557073078495)

        (= (dummy_2_value d2_0) 1.130051284857643)

        (= (dummy_3_value d3_0) 76.9137308703349)
		(= (dummy_3_value d3_1) 83.73965039164227)
		(= (dummy_3_value d3_2) 27.714121188256687)
		(= (dummy_3_value d3_3) 18.346873946177922)
		(= (dummy_3_value d3_4) 73.6689060859051)

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

