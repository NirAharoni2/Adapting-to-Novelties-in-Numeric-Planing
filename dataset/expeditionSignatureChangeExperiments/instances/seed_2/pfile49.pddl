;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.115416646996957)

        (= (sled_supplies s0) 0.4799222511786527)

        (= (factor_value f0) 0.5217324835800484)

        (= (dummy_1_value d1_0) 0.5836759468906165)
		(= (dummy_1_value d1_1) 0.5653843467396262)
		(= (dummy_1_value d1_2) 0.864132161553381)

        (= (dummy_2_value d2_0) 9.46157739716708)
		(= (dummy_2_value d2_1) 4.5267505448987215)
		(= (dummy_2_value d2_2) 9.93775042846057)

        (= (dummy_3_value d3_0) 64.84540279765272)
		(= (dummy_3_value d3_1) 76.62434744982556)
		(= (dummy_3_value d3_2) 46.88912077793742)
		(= (dummy_3_value d3_3) 11.93731703452988)
		(= (dummy_3_value d3_4) 1.14550095971168)

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

