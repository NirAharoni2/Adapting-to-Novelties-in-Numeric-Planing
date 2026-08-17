;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.20954180912626)

        (= (sled_supplies s0) 4.585226006443116)

        (= (factor_value f0) 0.607118740587942)

        (= (dummy_1_value d1_0) 0.5606475110422842)
		(= (dummy_1_value d1_1) 0.5993804227029509)
		(= (dummy_1_value d1_2) 0.6033913936008424)

        (= (dummy_2_value d2_0) 4.505464205107291)
		(= (dummy_2_value d2_1) 8.691046275155593)
		(= (dummy_2_value d2_2) 8.84801147460141)
		(= (dummy_2_value d2_3) 4.0051700626621685)
		(= (dummy_2_value d2_4) 7.651905842946182)

        (= (dummy_3_value d3_0) 10.100534938112723)

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

