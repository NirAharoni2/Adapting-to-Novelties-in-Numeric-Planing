;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.723476239114792)

        (= (sled_supplies s0) 1.6795170596613618)

        (= (factor_value f0) 0.5741301552137865)
		(= (factor_value f1) 0.9975023238810672)
		(= (factor_value f2) 0.9070263179400304)

        (= (dummy_1_value d1_0) 0.6838829735587687)
		(= (dummy_1_value d1_1) 0.5635593518226487)
		(= (dummy_1_value d1_2) 0.8930785145131681)
		(= (dummy_1_value d1_3) 0.9748147465203951)

        (= (dummy_2_value d2_0) 4.716200607428591)
		(= (dummy_2_value d2_1) 9.45149003434252)
		(= (dummy_2_value d2_2) 3.585492362496838)
		(= (dummy_2_value d2_3) 4.7867843748769525)

        (= (dummy_3_value d3_0) 28.09383438465569)

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

