;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) -2.0)
		(= (x b1) -3.0)
		(= (y b1) 4.0)

		(= (d p0) 34.0)
		(= (d p1) -110.0)

        (= (dummy_1_d d1_0) 27.0)
		(= (dummy_1_d d1_1) 23.0)
		(= (dummy_1_d d1_2) 148.0)

        (= (dummy_2_d d2_0) 3.0)
		(= (dummy_2_d d2_1) -6.0)
		(= (dummy_2_d d2_2) -10.0)

        (= (dummy_3_d d3_0) -157.0)
		(= (dummy_3_d d3_1) -1463.0)
		(= (dummy_3_d d3_2) -644.0)
		(= (dummy_3_d d3_3) 1336.0)
		(= (dummy_3_d d3_4) -1206.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

