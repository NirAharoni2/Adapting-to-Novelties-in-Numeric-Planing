;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.972202605739543)

        (= (sled_supplies s0) 1.2855286069451906)

        (= (factor_value f0) 0.6400862845804189)

        (= (dummy_1_value d1_0) 0.8128262273408172)

        (= (dummy_2_value d2_0) 8.751004852873498)
		(= (dummy_2_value d2_1) 3.4216683910060732)
		(= (dummy_2_value d2_2) 7.468887766196344)

        (= (dummy_3_value d3_0) 38.54837712116057)
		(= (dummy_3_value d3_1) 13.043979709249777)
		(= (dummy_3_value d3_2) 35.35530024621395)
		(= (dummy_3_value d3_3) 12.226657456393129)
		(= (dummy_3_value d3_4) 89.96235548874823)

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

