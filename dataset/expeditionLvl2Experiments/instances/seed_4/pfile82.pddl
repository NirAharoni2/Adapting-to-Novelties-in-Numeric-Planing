;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.362634212898589)

        (= (sled_supplies s0) 3.62365575107626)

        (= (factor_value f0) 0.9059821126053353)
		(= (factor_value f1) 0.720032377889921)
		(= (factor_value f2) 0.594715477173471)
		(= (factor_value f3) 0.8084032301652808)

        (= (dummy_1_value d1_0) 0.6616944138401765)
		(= (dummy_1_value d1_1) 0.563609386075637)
		(= (dummy_1_value d1_2) 0.7911538287493766)
		(= (dummy_1_value d1_3) 0.5099725116130387)

        (= (dummy_2_value d2_0) 9.255296128009826)
		(= (dummy_2_value d2_1) 6.129439955547294)
		(= (dummy_2_value d2_2) 3.387168725716209)
		(= (dummy_2_value d2_3) 9.432512053925018)
		(= (dummy_2_value d2_4) 6.231552998754675)

        (= (dummy_3_value d3_0) 2.390634348134187)
		(= (dummy_3_value d3_1) 72.59222440430716)
		(= (dummy_3_value d3_2) 6.267978529507981)
		(= (dummy_3_value d3_3) 28.452544643050402)

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

