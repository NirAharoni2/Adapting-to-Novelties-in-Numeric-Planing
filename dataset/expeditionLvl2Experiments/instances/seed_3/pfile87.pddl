;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.713146223827714)

        (= (sled_supplies s0) 0.6013378779857852)

        (= (factor_value f0) 0.5149102613738844)
		(= (factor_value f1) 0.9848361021867715)

        (= (dummy_1_value d1_0) 0.6184770104423125)
		(= (dummy_1_value d1_1) 0.9094288446274895)
		(= (dummy_1_value d1_2) 0.9090237055264929)
		(= (dummy_1_value d1_3) 0.9772101057029896)
		(= (dummy_1_value d1_4) 0.7350957762997179)

        (= (dummy_2_value d2_0) 7.28915762999957)
		(= (dummy_2_value d2_1) 3.628334505033127)
		(= (dummy_2_value d2_2) 8.495722026824378)
		(= (dummy_2_value d2_3) 1.9796987563784345)

        (= (dummy_3_value d3_0) 88.4904609363915)
		(= (dummy_3_value d3_1) 59.63960101963954)

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

