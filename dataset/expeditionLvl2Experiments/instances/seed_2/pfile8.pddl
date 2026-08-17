;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.813559670301547)

        (= (sled_supplies s0) 1.7830794713881348)

        (= (factor_value f0) 0.6158275362411856)
		(= (factor_value f1) 0.9581989831606526)
		(= (factor_value f2) 0.8540467505683389)

        (= (dummy_1_value d1_0) 0.5157006680761472)

        (= (dummy_2_value d2_0) 3.220844940038506)
		(= (dummy_2_value d2_1) 7.4248072654178525)

        (= (dummy_3_value d3_0) 8.281218654120678)
		(= (dummy_3_value d3_1) 8.962492350731019)

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

