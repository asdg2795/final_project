package com.multi.myapp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WalkingVO {
	private String userid;
	private int no;
	private String walkingname;
	private String walkingimg;
	private String walkingcontent;
	private String hashtag;
	private String writedate;
	private String startPoint;
	private String endPoint;
	private int people;
	
}
