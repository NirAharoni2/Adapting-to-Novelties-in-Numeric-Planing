;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.431432278222541)

        (= (sled_supplies s0) 4.198100553069896)

        (= (factor_value f0) 0.8087648944584964)
		(= (factor_value f1) 0.8148749702593485)
		(= (factor_value f2) 0.6217475671811037)
		(= (factor_value f3) 0.6973396106785553)
		(= (factor_value f4) 0.6050742068211508)

        (= (dummy_1_value d1_0) 0.5759916183355702)
		(= (dummy_1_value d1_1) 0.9947561334790833)
		(= (dummy_1_value d1_2) 0.871907054330335)
		(= (dummy_1_value d1_3) 0.9395686252418841)

        (= (dummy_2_value d2_0) 1.0131690905541708)

        (= (dummy_3_value d3_0) 70.74262724858285)
		(= (dummy_3_value d3_1) 31.418944567314764)

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

