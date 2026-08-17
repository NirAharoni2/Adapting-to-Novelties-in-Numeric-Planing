;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.149021849705743)

        (= (sled_supplies s0) 1.910707267661738)

        (= (factor_value f0) 0.5556582876747163)

        (= (dummy_1_value d1_0) 0.943849569323246)
		(= (dummy_1_value d1_1) 0.6937545715458968)
		(= (dummy_1_value d1_2) 0.9678064926688866)
		(= (dummy_1_value d1_3) 0.9706013160258457)
		(= (dummy_1_value d1_4) 0.6761805420768356)

        (= (dummy_2_value d2_0) 5.723707519454158)
		(= (dummy_2_value d2_1) 4.5320486078917686)
		(= (dummy_2_value d2_2) 1.7095025498967455)

        (= (dummy_3_value d3_0) 16.685109539824047)
		(= (dummy_3_value d3_1) 71.0818467264699)
		(= (dummy_3_value d3_2) 44.44232759947273)
		(= (dummy_3_value d3_3) 58.893120620090905)

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

