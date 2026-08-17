;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.4378287860877945)

        (= (sled_supplies s0) 5.272227411942686)

        (= (factor_value f0) 0.5698002448245978)
		(= (factor_value f1) 0.7422855183759696)
		(= (factor_value f2) 0.683832045307625)
		(= (factor_value f3) 0.8253681905715551)
		(= (factor_value f4) 0.922065267338196)

        (= (dummy_1_value d1_0) 0.509010768126396)
		(= (dummy_1_value d1_1) 0.5695097656098427)
		(= (dummy_1_value d1_2) 0.9315614939030707)
		(= (dummy_1_value d1_3) 0.8152788030602395)

        (= (dummy_2_value d2_0) 2.206125938452361)
		(= (dummy_2_value d2_1) 1.2985139301552913)
		(= (dummy_2_value d2_2) 7.775581436868867)
		(= (dummy_2_value d2_3) 4.73990884818156)
		(= (dummy_2_value d2_4) 9.897807055941355)

        (= (dummy_3_value d3_0) 59.39402649529071)
		(= (dummy_3_value d3_1) 46.35048855810633)
		(= (dummy_3_value d3_2) 48.51539515354122)
		(= (dummy_3_value d3_3) 42.677595099951134)
		(= (dummy_3_value d3_4) 23.45350287349603)

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

