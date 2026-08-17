;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.759577413154735)

        (= (sled_supplies s0) 5.738644887337692)

        (= (factor_value f0) 0.9113524487050937)
		(= (factor_value f1) 0.6281515406924146)
		(= (factor_value f2) 0.7450936157720023)

        (= (dummy_1_value d1_0) 0.7751895482094485)

        (= (dummy_2_value d2_0) 7.956214031810836)

        (= (dummy_3_value d3_0) 27.12866604408278)
		(= (dummy_3_value d3_1) 57.04960060292964)
		(= (dummy_3_value d3_2) 52.35452205462399)

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

