;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.496707419787906)

        (= (sled_supplies s0) 4.442328313846189)

        (= (factor_value f0) 0.6265954645568785)
		(= (factor_value f1) 0.6303784824425995)
		(= (factor_value f2) 0.6710574629146935)

        (= (dummy_1_value d1_0) 0.7854179725443876)
		(= (dummy_1_value d1_1) 0.5886800640350167)
		(= (dummy_1_value d1_2) 0.9282982918065008)

        (= (dummy_2_value d2_0) 6.070397167754366)
		(= (dummy_2_value d2_1) 3.13530636703163)
		(= (dummy_2_value d2_2) 1.929807677077521)
		(= (dummy_2_value d2_3) 5.45959707158728)
		(= (dummy_2_value d2_4) 6.408606771321757)

        (= (dummy_3_value d3_0) 41.51335625274822)
		(= (dummy_3_value d3_1) 73.14926006098119)
		(= (dummy_3_value d3_2) 97.27440493231032)
		(= (dummy_3_value d3_3) 44.3057072092666)

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

