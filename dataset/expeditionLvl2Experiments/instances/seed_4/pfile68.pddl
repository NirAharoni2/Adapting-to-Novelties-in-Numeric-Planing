;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.098758452488641)

        (= (sled_supplies s0) 4.821071644660808)

        (= (factor_value f0) 0.5406296962585163)
		(= (factor_value f1) 0.9055181728475952)

        (= (dummy_1_value d1_0) 0.8620353295658101)
		(= (dummy_1_value d1_1) 0.5753188309123488)
		(= (dummy_1_value d1_2) 0.7282011296259512)
		(= (dummy_1_value d1_3) 0.9708200035688632)
		(= (dummy_1_value d1_4) 0.8525085418743912)

        (= (dummy_2_value d2_0) 6.718431659591194)
		(= (dummy_2_value d2_1) 5.919392185827943)

        (= (dummy_3_value d3_0) 93.46793093071328)
		(= (dummy_3_value d3_1) 14.914791379282544)
		(= (dummy_3_value d3_2) 4.663033558611005)

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

