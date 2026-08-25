;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.371519228331405)

        (= (sled_supplies s0) 4.334857340467607)

        (= (factor_value f0) 0.8868585089247386)
		(= (factor_value f1) 0.6629524665759612)
		(= (factor_value f2) 0.6368425542970708)
		(= (factor_value f3) 0.6444132581974553)

        (= (dummy_1_value d1_0) 0.7501745620646958)
		(= (dummy_1_value d1_1) 0.8368190705687775)
		(= (dummy_1_value d1_2) 0.6782853169287909)

        (= (dummy_2_value d2_0) 3.464880859826264)
		(= (dummy_2_value d2_1) 4.110236515406118)
		(= (dummy_2_value d2_2) 9.43763664702846)

        (= (dummy_3_value d3_0) 41.43843336890988)
		(= (dummy_3_value d3_1) 92.31098995689361)
		(= (dummy_3_value d3_2) 18.074828968355153)

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

