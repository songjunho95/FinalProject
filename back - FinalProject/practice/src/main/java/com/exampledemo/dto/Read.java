package com.exampledemo.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Read {
    private Integer pno;
    private String vendor;
    private String name;
    private String info;
    private String imagename;
    private Integer price;
    private Integer salesVolume;
    private Double star;
    private Integer countOfReview;
    private String categoryCode;
    private List<Review> reviews;
}