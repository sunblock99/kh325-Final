package com.kh.tour.course.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyCourseRev {

    private int myCourseRevNo; //리뷰번호
    private int myCourseNo; //나의코스번호
    private int userNo;
    private String userName;
    private String userAvatar;
    private int cntRevStar;
    private String mcRevContent;

}