;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.634539481326778)

        (= (sled_supplies s0) 4.882269311104862)

        (= (factor_value f0) 0.7930283284987171)
		(= (factor_value f1) 0.8785720459255066)
		(= (factor_value f2) 0.9922712931949701)
		(= (factor_value f3) 0.6705185655723388)

        (= (dummy_1_value d1_0) 0.5258992443176338)
		(= (dummy_1_value d1_1) 0.5220998966472448)
		(= (dummy_1_value d1_2) 0.8053048036127533)
		(= (dummy_1_value d1_3) 0.9456387502986365)
		(= (dummy_1_value d1_4) 0.9268981661895748)

        (= (dummy_2_value d2_0) 9.446781267000071)
		(= (dummy_2_value d2_1) 5.22240511616691)
		(= (dummy_2_value d2_2) 6.249903094093753)

        (= (dummy_3_value d3_0) 7.4226684351733025)
		(= (dummy_3_value d3_1) 86.73072309579184)

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

