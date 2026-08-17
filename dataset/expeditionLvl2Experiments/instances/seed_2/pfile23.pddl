;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.569211148219557)

        (= (sled_supplies s0) 0.34937479763430745)

        (= (factor_value f0) 0.7368966880807322)

        (= (dummy_1_value d1_0) 0.8097428525662833)
		(= (dummy_1_value d1_1) 0.6584193987571865)
		(= (dummy_1_value d1_2) 0.918819489410261)

        (= (dummy_2_value d2_0) 6.377824521175976)
		(= (dummy_2_value d2_1) 6.292005327298106)
		(= (dummy_2_value d2_2) 5.847277581558363)
		(= (dummy_2_value d2_3) 9.864402431707015)
		(= (dummy_2_value d2_4) 9.900370915320932)

        (= (dummy_3_value d3_0) 84.23834436732042)
		(= (dummy_3_value d3_1) 46.00304409690865)
		(= (dummy_3_value d3_2) 41.76718799929028)
		(= (dummy_3_value d3_3) 52.95191233465048)

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

