;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 4.0)
		(= (x b1) 5.0)
		(= (y b1) -2.0)

		(= (d p0) 72.0)
		(= (d p1) 116.0)

        (= (dummy_1_d d1_0) 31.0)
		(= (dummy_1_d d1_1) 95.0)
		(= (dummy_1_d d1_2) -102.0)
		(= (dummy_1_d d1_3) 3.0)

        (= (dummy_2_d d2_0) -14.0)
		(= (dummy_2_d d2_1) -14.0)

        (= (dummy_3_d d3_0) 900.0)
		(= (dummy_3_d d3_1) 1258.0)
		(= (dummy_3_d d3_2) 1405.0)
		(= (dummy_3_d d3_3) -1210.0)
		(= (dummy_3_d d3_4) -494.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

