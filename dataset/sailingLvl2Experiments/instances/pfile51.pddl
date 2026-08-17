;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -0.0)
		(= (y b0) 4.0)
		(= (x b1) -7.0)
		(= (y b1) 5.0)

		(= (d p0) -81.0)
		(= (d p1) -110.0)

        (= (dummy_1_d d1_0) 112.0)
		(= (dummy_1_d d1_1) 18.0)

        (= (dummy_2_d d2_0) -12.0)
		(= (dummy_2_d d2_1) 15.0)
		(= (dummy_2_d d2_2) 11.0)

        (= (dummy_3_d d3_0) 61.0)
		(= (dummy_3_d d3_1) -638.0)
		(= (dummy_3_d d3_2) 1462.0)
		(= (dummy_3_d d3_3) -247.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

