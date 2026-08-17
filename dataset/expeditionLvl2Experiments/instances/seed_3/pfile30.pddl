;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.789251574678229)

        (= (sled_supplies s0) 7.847953121788553)

        (= (factor_value f0) 0.5920552903782785)

        (= (dummy_1_value d1_0) 0.7065315697888794)
		(= (dummy_1_value d1_1) 0.7537392280618228)
		(= (dummy_1_value d1_2) 0.7736315367154107)
		(= (dummy_1_value d1_3) 0.7682582500578752)

        (= (dummy_2_value d2_0) 8.005023087238332)
		(= (dummy_2_value d2_1) 4.625248369363538)
		(= (dummy_2_value d2_2) 8.537197147743033)

        (= (dummy_3_value d3_0) 86.58588936672479)
		(= (dummy_3_value d3_1) 39.200531160310426)
		(= (dummy_3_value d3_2) 93.82735803559659)
		(= (dummy_3_value d3_3) 36.56440396924917)
		(= (dummy_3_value d3_4) 19.20892590969591)

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

