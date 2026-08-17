;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.508540464373703)

        (= (sled_supplies s0) 3.7756504387937926)

        (= (factor_value f0) 0.9095057176053294)
		(= (factor_value f1) 0.682267914462416)
		(= (factor_value f2) 0.9082703953649395)
		(= (factor_value f3) 0.6971498741344884)
		(= (factor_value f4) 0.9520642933453991)

        (= (dummy_1_value d1_0) 0.6957107419985515)
		(= (dummy_1_value d1_1) 0.7629741587471215)
		(= (dummy_1_value d1_2) 0.5690279686012685)
		(= (dummy_1_value d1_3) 0.9395157962913946)

        (= (dummy_2_value d2_0) 7.890992302095546)
		(= (dummy_2_value d2_1) 1.2788509412034745)
		(= (dummy_2_value d2_2) 4.71969253979354)

        (= (dummy_3_value d3_0) 84.65817093307474)
		(= (dummy_3_value d3_1) 60.837870328577964)
		(= (dummy_3_value d3_2) 40.70630493275127)
		(= (dummy_3_value d3_3) 48.32956076763162)

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

