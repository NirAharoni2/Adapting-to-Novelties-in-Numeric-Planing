;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.406864705520906)

        (= (sled_supplies s0) 3.7562319338297363)

        (= (factor_value f0) 0.6985030932607517)
		(= (factor_value f1) 0.7611685162203908)
		(= (factor_value f2) 0.7835008341684403)

        (= (dummy_1_value d1_0) 0.9369826957295377)
		(= (dummy_1_value d1_1) 0.6979180722769474)
		(= (dummy_1_value d1_2) 0.724623840861206)
		(= (dummy_1_value d1_3) 0.9163272212488154)
		(= (dummy_1_value d1_4) 0.9855374682614004)

        (= (dummy_2_value d2_0) 3.186060095874913)
		(= (dummy_2_value d2_1) 7.573871647994665)
		(= (dummy_2_value d2_2) 3.2285068609634244)

        (= (dummy_3_value d3_0) 74.37091134474882)
		(= (dummy_3_value d3_1) 4.814208488286248)

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

